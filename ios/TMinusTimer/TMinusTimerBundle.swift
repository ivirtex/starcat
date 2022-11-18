//
//  TMinusTimerBundle.swift
//  TMinusTimer
//
//  Created by Hubert Jóźwiak on 14/11/2022.
//

import WidgetKit
import SwiftUI

@main
struct TMinusTimerBundle: WidgetBundle {
    var body: some Widget {
        TMinusTimer()
        TMinusTimerLiveActivity()
    }
}
