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
    
    public struct ContentState: Codable, Hashable {
        public var status: String?
        public var launchTZeroDateInISO8601: String?
        public var updateMessage: String?
    }
    
    var id = UUID()
}

let sharedDefault = UserDefaults(suiteName: "group.dev.ivirtex.starcat.activity")!
let paddingValue: CGFloat = 5

struct LaunchCountdownLiveActivity: Widget {
    var body: some WidgetConfiguration {
        let launchName = sharedDefault.string(forKey: "launchName")!
        let launchVehicle = sharedDefault.string(forKey: "launchVehicle")!
        
        return ActivityConfiguration(for: LiveActivitiesAppAttributes.self) { context in
            let status = getStatus(context: context)
            let remainingTime = getRemainingTimeRange(context: context)
            
            HStack {
                Text("T -")
                    .foregroundStyle(.red)
                TextTimer(timerInterval: remainingTime)
                Spacer()
                Text(launchName)
            }
            .padding()
        } dynamicIsland: { context in DynamicIsland {
            let status = getStatus(context: context)
            
            DynamicIslandExpandedRegion(.leading, priority: 10) {
                VStack(alignment: .leading) {
                    Text(launchName)
                    Text(launchVehicle)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Spacer()
                }
                .padding(.leading, paddingValue)
            }
            DynamicIslandExpandedRegion(.bottom) {
                VStack(alignment: .leading) {
                    if let updateMessage = context.state.updateMessage {
                        HStack {
                            Text("Update: ")
                                .fontWeight(.bold)
                                .foregroundStyle(.orange)
                            Text(updateMessage)
                        }
                        .font(.footnote)
                    }
                    ProgressView(timerInterval: getRemainingTimeRange(context: context))
                        .tint(.red)
                }
                .padding(.horizontal, paddingValue)
                .padding(.top, paddingValue * 2)
            }
            DynamicIslandExpandedRegion(.trailing) {
                Label {
                    Text(status.status.rawValue)
                        .fontWeight(.semibold)
                        .foregroundStyle(status.color)
                } icon: {
                    Image(systemName: status.icon)
                        .foregroundStyle(status.color)
                }
                .padding(.trailing, paddingValue)
            }
        } compactLeading: {
            Text(launchName.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).split(separator: " ").first!.trimmingCharacters(in: CharacterSet.punctuationCharacters))
        } compactTrailing: {
            CircularTimer(timerInterval: getRemainingTimeRange(context: context))
        } minimal: {
            CircularTimer(timerInterval: getRemainingTimeRange(context: context))
        }
        .keylineTint(Color.red)
        }
    }
    
    func getStatus(context: ActivityViewContext<LiveActivitiesAppAttributes>) -> LaunchStatus {
        let status = context.state.status ?? sharedDefault.string(forKey: "status")!
        let parsedStatus = LaunchStatus(status: status)
        
        return parsedStatus
    }
    
    func getRemainingTimeRange(context: ActivityViewContext<LiveActivitiesAppAttributes>) -> ClosedRange<Date> {
        let launchTZeroDateInISO8601 = context.state.launchTZeroDateInISO8601 ?? sharedDefault.string(forKey: "launchTZeroDate")!
        
        let iso8601formatter = ISO8601DateFormatter()
        iso8601formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        let launchTZeroDate = iso8601formatter.date(from: launchTZeroDateInISO8601)!
        
        let now = Date()
        let remainingTime = now ... launchTZeroDate
        
        return remainingTime
    }
}

struct TextTimer: View {
    let timerInterval: ClosedRange<Date>
    
    var body: some View {
        Text(timerInterval: timerInterval, pauseTime: timerInterval.lowerBound)
            .monospaced()
    }
}

struct CircularTimer: View {
    let timerInterval: ClosedRange<Date>
    
    var body: some View {
        ProgressView(timerInterval: timerInterval, countsDown: true, label: {
            Text("Countdown timer")
        }) {
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
