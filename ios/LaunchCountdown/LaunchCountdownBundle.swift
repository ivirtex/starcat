//
//  LaunchCountdownBundle.swift
//  LaunchCountdown
//
//  Created by Hubert Jóźwiak on 21/07/2023.
//

import WidgetKit
import SwiftUI

@main
struct LaunchCountdownBundle: WidgetBundle {
    var body: some Widget {
        LaunchCountdown()
        LaunchCountdownLiveActivity()
    }
}
