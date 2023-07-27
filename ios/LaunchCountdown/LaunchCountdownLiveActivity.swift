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

let sharedDefault = UserDefaults(suiteName: "group.hubertjozwiak.starcat")!

struct LaunchCountdownLiveActivity: Widget {
    var body: some WidgetConfiguration {
        let launchName: String = sharedDefault.string(forKey: "launchName") ?? "CRS-21"
        let launchTZeroDateInISO8601 = sharedDefault.string(forKey: "launchTZeroDate") ?? Date().addingTimeInterval(900).ISO8601Format()
        let now = Date()
        let launchTZeroDate = ISO8601DateFormatter().date(from: launchTZeroDateInISO8601)!
        let remainingTime = now ... launchTZeroDate

        return ActivityConfiguration(for: LiveActivitiesAppAttributes.self) { _ in
            HStack {
                Text(launchName)
                Spacer()
                CountdownTimer(remainingTime: remainingTime)
            }
            .padding()
            .background(.regularMaterial)
        } dynamicIsland: { _ in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Text(launchName).font(.title2)
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack {
                        Text("T -").foregroundColor(.red)
                        CountdownTimer(remainingTime: remainingTime)
                    }
                    .font(.title2)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Label {
                        Text("Go")
                            .fontWeight(.semibold)
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .foregroundColor(.green)
                }
            } compactLeading: {
                ZStack {
                    Circle()
                        .stroke(.red, lineWidth: 2)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    Text("T-").font(.caption)
                }.padding(.trailing, 2)
            } compactTrailing: {
                CountdownTimer(remainingTime: remainingTime)
                // Need to define max width due to a bug in SwiftUI
            } minimal: {
                ZStack {
                    Circle()
                        .stroke(.red, lineWidth: 2).frame(maxWidth: .infinity, maxHeight: .infinity)
                    Text("T-").font(.caption)
                }
            }
            .keylineTint(Color.red)
        }
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

struct CountdownTimer: View {
    let remainingTime: ClosedRange<Date>

    var body: some View {
        Text(timerInterval: remainingTime, showsHours: false)
            .monospacedDigit()
            .background(.red)
    }
}
