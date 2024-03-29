//
//  ContentView.swift
//  LifeTracker
//
//  Created by Thwalsh on 03/11/2022.
//

import SwiftUI

struct MainGame: View {
    var playerCount : Int
    var startingHealth: Int
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            switch self.playerCount {
            case 1:
                OnePlayerView(startingLifeTotal: startingHealth)
            case 2:
                TwoPlayerView(startingLifeTotal: startingHealth)
            case 3:
                ThreePlayerView(startingLifeTotal: startingHealth)
            case 4:
                FourPlayerView(startingLifeTotal: startingHealth)
            case 5:
                FivePlayerView(startingLifeTotal: startingHealth)
            default:
                TwoPlayerView(startingLifeTotal: startingHealth)
            }
            
            Button {
                print("Menu Options")
            } label: {
                //Image(systemName: "gear.circle")
                    
            }
        }.navigationBarTitleDisplayMode(.inline)
        //.navigationBarHidden(true)
        /*
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action : {
            self.mode.wrappedValue.dismiss()
        }){
            Image(systemName: "arrow.left")
        })
         */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainGame(playerCount: 5, startingHealth: 40)
    }
}
