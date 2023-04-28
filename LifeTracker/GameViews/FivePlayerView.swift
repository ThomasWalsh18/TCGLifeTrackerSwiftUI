//
//  FivePlayerView.swift
//  LifeTracker
//
//  Created by Thwalsh on 11/11/2022.
//

import SwiftUI

struct FivePlayerView: View {
    let startingLifeTotal: Int
    
    var body: some View {
        HStack {
            VStack(spacing: 8){
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .indigo, internalRotation: 90)
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .green, internalRotation: 90)
            }
            VStack(spacing: 8){
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .red, internalRotation: -90)
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .orange, internalRotation: -90)
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .cyan, internalRotation: -90)
            }
        }.padding()
    }
}

struct FivePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        FivePlayerView(startingLifeTotal: 40)
    }
}
