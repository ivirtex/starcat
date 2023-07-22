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
        let launchName = sharedDefault.string(forKey: "launchName") ?? "CRS-21"
        let launchTimeLeft = sharedDefault.integer(forKey: "launchTimeLeft")
        let daysLeft = launchTimeLeft / 86400
        let hoursLeft = (launchTimeLeft % 86400) / 3600
        let minutesLeft = (launchTimeLeft % 3600) / 60
        let secondsLeft = launchTimeLeft % 60

        var formattedString = ""
        if daysLeft > 0 {
            formattedString = String(format: "%02ld:%02ld", daysLeft, hoursLeft)
        } else if hoursLeft > 0 {
            formattedString = String(format: "%02ld:%02ld", hoursLeft, minutesLeft)
        } else if minutesLeft > 0 {
            formattedString = String(format: "%02ld:%02ld", minutesLeft, secondsLeft)
        }

        return ActivityConfiguration(for: LiveActivitiesAppAttributes.self) { _ in
            HStack {
                Text(launchName)
                Spacer()
                Text("T - " + formattedString)
            }.padding()
                .activityBackgroundTint(.black).background(.regularMaterial)
                .activitySystemActionForegroundColor(.white)
        } dynamicIsland: { _ in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    Text(launchName).font(.title2)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("T - " + formattedString).font(.title2)
                }
            } compactLeading: {
                ZStack {
                    Circle()
                        .stroke(.red, lineWidth: 2).frame(maxWidth: .infinity, maxHeight: .infinity)
                    Text("T-").font(.caption)
                }.padding(.trailing, 2)
            } compactTrailing: {
                Text(formattedString)
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
