//
//  ThreePlayerView.swift
//  LifeTracker
//
//  Created by Thwalsh on 08/11/2022.
//

import SwiftUI

struct ThreePlayerView : View {
    let startingLifeTotal: Int

    var body: some View {
        VStack(spacing: 8) {
            HStack{
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .indigo, internalRotation: 90)
                LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .red, internalRotation: -90)
            }
            LifeTrackerUI(startingLife: startingLifeTotal, backgroundColor: .green).frame(height: UIScreen.main.bounds.height/3)
        }.padding()
    }
}

struct Previews_ThreePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ThreePlayerView(startingLifeTotal: 40)
    }
}
