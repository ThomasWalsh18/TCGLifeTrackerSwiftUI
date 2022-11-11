//
//  TwoPlayerView.swift
//  LifeTracker
//
//  Created by Thwalsh on 08/11/2022.
//

import SwiftUI

struct TwoPlayerView : View {
    let startingLifeTotal: Int

    var body: some View {
        VStack {
            LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .indigo, internalRotation: 180)
            LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .red)
        }
        .padding()
    }
}
