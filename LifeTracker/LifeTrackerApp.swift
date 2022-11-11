//
//  LifeTrackerApp.swift
//  LifeTracker
//
//  Created by Thwalsh on 03/11/2022.
//

import SwiftUI

@main
struct LifeTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                GameModeMenu()
                //MainGame().statusBarHidden(true)
            }
            .navigationViewStyle(.stack)
            .statusBarHidden(true)
        }
    }
}
