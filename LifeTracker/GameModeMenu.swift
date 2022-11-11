//
//  GameModeMenu.swift
//  LifeTracker
//
//  Created by Thwalsh on 10/11/2022.
//

import SwiftUI

public struct GameModeMenu : View {
    
    public var body: some View{
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 8) {
                Image(systemName: "play.circle")
                    .resizable()
                    .foregroundColor(.white)
                    .scaledToFit()
                    .scaleEffect(0.7)
                HStack{
                    PlayerCountButton(playerCount: 1, backgroundColour: .red)
                    PlayerCountButton(playerCount: 2, backgroundColour: .indigo)
                    PlayerCountButton(playerCount: 3, backgroundColour: .green)
                }
                HStack{
                    PlayerCountButton(playerCount: 4, backgroundColour: .orange)
                    PlayerCountButton(playerCount: 5, backgroundColour: .cyan)
                }
            }
        }
    }
}

struct PlayerCountButton : View {
    let playerCount : Int
    let backgroundColour : Color
    
    var body: some View {
        NavigationLink(destination: HealthModeMenu(playerCount: self.playerCount))
        {
            ZStack{
                Rectangle().foregroundColor(backgroundColour)
                    .frame(height: UIScreen.main.bounds.height/4)
                    .cornerRadius(40)
                Text("\(self.playerCount)").font(.system(size: 100, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
            }
        }
    }
}

struct GameModeMenu_Preview: PreviewProvider {
    static var previews: some View {
        HStack{
            GameModeMenu()
        }
    }
}
