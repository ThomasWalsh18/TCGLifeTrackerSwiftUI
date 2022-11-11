//
//  HealthModeMenu.swift
//  LifeTracker
//
//  Created by Thwalsh on 11/11/2022.
//

import SwiftUI

struct HealthModeMenu: View {
    var playerCount: Int
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 8) {
                
                ZStack {
                    Image(systemName: "play.circle")
                        .resizable()
                        .foregroundColor(.gray)
                        .scaledToFit()
                        .scaleEffect(0.7)
                        .opacity(0.3)
                    Text("\(playerCount) Players at what starting life?").foregroundColor(.white)
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                }
                HStack{
                    HealthOptionButton(playerCount: playerCount, startingHealth: 20, backgroundColour: .red)
                    HealthOptionButton(playerCount: playerCount, startingHealth: 30, backgroundColour: .indigo)
                    HealthOptionButton(playerCount: playerCount, startingHealth: 40, backgroundColour: .green)
                }
                HStack{
                    HealthOptionButton(playerCount: playerCount, startingHealth: 50, backgroundColour: .orange)
                    HealthOptionButton(playerCount: playerCount, startingHealth: 100, backgroundColour: .cyan)
                }
            }
        }
    }
}

struct HealthOptionButton : View {
    let playerCount: Int
    let startingHealth : Int
    let backgroundColour : Color
    
    var body: some View {
        NavigationLink(destination: MainGame(playerCount: playerCount, startingHealth: startingHealth))
        {
            ZStack{
                Rectangle().foregroundColor(backgroundColour)
                    .frame(height: UIScreen.main.bounds.height/4)
                    .cornerRadius(40)
                Text("\(startingHealth)").font(.system(size: 100, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
            }
        }
    }
}

struct HealthModeMenu_Previews: PreviewProvider {
    static var previews: some View {
        HealthModeMenu(playerCount: 2)
    }
}
