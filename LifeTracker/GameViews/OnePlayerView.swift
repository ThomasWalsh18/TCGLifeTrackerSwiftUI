//
//  OnePlayerView.swift
//  LifeTracker
//
//  Created by Thwalsh on 08/11/2022.
//

import SwiftUI

struct OnePlayerView : View {
    let startingLifeTotal: Int

    var body: some View {
        VStack {
            LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .red).rotationEffect(.degrees(0))
        }
        .padding()
    }
}
