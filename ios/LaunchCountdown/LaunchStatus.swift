//
//  LaunchStatus.swift
//  Runner
//
//  Created by Hubert Jóźwiak on 02/10/2023.
//

import Foundation
import SwiftUI

enum Status: String {
    case go = "Go"
    case tbc = "TBC"
    case success = "Success"
    case failure = "Failure"
    case hold = "Hold"
    case inFlight = "In Flight"
    case partialFailure = "Partial Failure"
    case tbd = "TBD"
}

struct LaunchStatus {
    let status: Status
    let color: Color
    let icon: String

    init(status: String) {
        let parsedStatus = LaunchStatus.parseFromString(status: status)

        self.status = parsedStatus
        self.color = LaunchStatus.getColorBasedOnStatus(status: parsedStatus)
        self.icon = LaunchStatus.getIconBasedOnStatus(status: parsedStatus)
    }

    static func parseFromString(status: String) -> Status {
        switch status {
            case "Go":
                return .go
            case "TBC":
                return .tbc
            case "Success":
                return .success
            case "Failure":
                return .failure
            case "Hold":
                return .hold
            case "In Flight":
                return .inFlight
            case "Partial Failure":
                return .partialFailure
            case "TBD":
                return .tbd
            default:
                return .tbd
        }
    }

    static func getColorBasedOnStatus(status: Status) -> Color {
        switch status {
            case .go:
                return Color.green
            case .tbc:
                return Color.white
            case .success:
                return Color.green
            case .failure:
                return Color.red
            case .hold:
                return Color.yellow
            case .inFlight:
                return Color.blue
            case .partialFailure:
                return Color.orange
            case .tbd:
                return Color.gray
        }
    }

    static func getIconBasedOnStatus(status: Status) -> String {
        switch status {
            case .go:
                return "checkmark.circle.fill"
            case .tbc:
                return "checkmark.circle.badge.questionmark.fill"
            case .success:
                return "checkmark.circle.fill"
            case .failure:
                return "xmark.circle.fill"
            case .hold:
                return "exclamationmark.triangle.fill"
            case .inFlight:
                return "airplane"
            case .partialFailure:
                return "exclamationmark.triangle.fill"
            case .tbd:
                return "questionmark.circle.fill"
        }
    }
}
