//
//  LaunchCountdownLiveActivity.swift
//  LaunchCountdown
//
//  Created by Hubert Jóźwiak on 21/07/2023.
//

import ActivityKit
import SwiftUI
import WidgetKit

struct LiveActivitiesAppAttributes: ActivityAttributes, Identifiable {
    public typealias LiveDeliveryData = ContentState
    
    public struct ContentState: Codable, Hashable {}
    
    var id = UUID()
}

let sharedDefault = UserDefaults(suiteName: "group.dev.ivirtex.starcat.activity")!

struct LaunchCountdownLiveActivity: Widget {
    var body: some WidgetConfiguration {
        let status = sharedDefault.string(forKey: "status")!
        let launchName = sharedDefault.string(forKey: "launchName")!
        let launchVehicle = sharedDefault.string(forKey: "launchVehicle")!
        let launchTZeroDateInISO8601 = sharedDefault.string(forKey: "launchTZeroDate")!
        
        let iso8601formatter = ISO8601DateFormatter()
        iso8601formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        let now = Date()
        let launchTZeroDate = iso8601formatter.date(from: launchTZeroDateInISO8601)!
        let remainingTime = now ... launchTZeroDate
        
        let parsedStatus = LaunchStatus(status: status)
    
        return ActivityConfiguration(for: LiveActivitiesAppAttributes.self) { _ in
            HStack {
                Text("T -")
                    .foregroundStyle(.red)
                TextTimer(targetDate: launchTZeroDate)
                Spacer()
                Text(launchName)
            }
            .padding()
        } dynamicIsland: { _ in DynamicIsland {
            DynamicIslandExpandedRegion(.leading) {
                VStack(alignment: .leading) {
                    Text(launchName)
                    
                    Text(launchVehicle)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }.padding(.leading)
            }
            DynamicIslandExpandedRegion(.bottom) {
                ProgressView(timerInterval: remainingTime)
                    .tint(.red)
                    .padding(.horizontal)
                    .padding(.top)
            }
            DynamicIslandExpandedRegion(.trailing) {
                Label {
                    Text(parsedStatus.status.rawValue)
                        .fontWeight(.semibold)
                        .foregroundStyle(parsedStatus.color)
                } icon: {
                    Image(systemName: parsedStatus.icon)
                        .foregroundStyle(parsedStatus.color)
                }
                .padding(.trailing)
            }
        } compactLeading: {
            Text(launchName.split(separator: " ").first!)
        } compactTrailing: {
            CircularTimer(timerInterval: remainingTime)
        } minimal: {
            CircularTimer(timerInterval: remainingTime)
        }
        .keylineTint(Color.red)
        }
    }
}

struct TextTimer: View {
    let targetDate: Date
    
    var body: some View {
        Text(targetDate, style: .timer)
            .monospacedDigit()
    }
}

struct CircularTimer: View {
    let timerInterval: ClosedRange<Date>
    
    var body: some View {
        ProgressView(timerInterval: timerInterval, countsDown: true, label: {
            Text("Countdown timer")
        }) {
            // TODO: use T+ when passed launch time
            Text("T-")
        }
        .progressViewStyle(.circular)
        .tint(.red)
    }
}

struct LaunchCountdownLiveActivity_Previews: PreviewProvider {
    static let attributes = LiveActivitiesAppAttributes()
    static let contentState = LiveActivitiesAppAttributes.ContentState()
    
    static var previews: some View {
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.compact))
            .previewDisplayName("Island Compact")
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.expanded))
            .previewDisplayName("Island Expanded")
        attributes
            .previewContext(contentState, viewKind: .dynamicIsland(.minimal))
            .previewDisplayName("Minimal")
        attributes
            .previewContext(contentState, viewKind: .content)
            .previewDisplayName("Notification")
    }
}
