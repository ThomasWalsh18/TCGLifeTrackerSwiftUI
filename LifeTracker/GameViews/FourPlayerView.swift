//
//  FourPlayerView.swift
//  LifeTracker
//
//  Created by Thwalsh on 08/11/2022.
//

import SwiftUI

struct FourPlayerView : View {
    let startingLifeTotal: Int

    var body: some View {
        VStack(spacing: 8) {
            HStack{
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .indigo, internalRotation: 90)
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .red, internalRotation: -90)
            }
            HStack{
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .green, internalRotation: 90)
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .orange, internalRotation: -90)
            }
        }.padding()
    }
}

struct Previews_FourPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        FourPlayerView(startingLifeTotal: 40)
    }
}
