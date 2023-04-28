//
//  LifeTrackerUI.swift
//  LifeTracker
//
//  Created by Thwalsh on 08/11/2022.
//

import SwiftUI

struct LifeTrackerUI: View {
    @State public var life: Int
    public let backgroundColor: Color
    private var internalRotation : Double
    
    @State private var timer: Timer?
    @State var isLongPressing = false
    
    init(startingLife: Int, backgroundColor: Color, internalRotation: Double = 0){
        self.life = startingLife
        self.backgroundColor = backgroundColor
        self.internalRotation = internalRotation
    }
    
    var body: some View {
        ZStack {
            Rectangle().foregroundColor(self.backgroundColor)
                .cornerRadius(40)
            
            VStack(alignment: .center) {
                Button {
                    if(self.isLongPressing)
                    {
                        self.isLongPressing.toggle()
                        self.timer?.invalidate()
                    } else {
                        self.life += 1
                    }
                }
            label: {
                ZStack{
                    Image(systemName: "chevron.up")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.3)
                        .opacity(0.3)
                }
            }.tint(.gray)
                    .simultaneousGesture(DragGesture().onEnded{ _ in
                        self.timer?.invalidate()
                    })
                    .simultaneousGesture(LongPressGesture(minimumDuration: 0.5).onEnded { _ in
                        self.isLongPressing = true
                        self.timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { _ in
                            self.life += 10
                        })
                    })
                
                Button {
                    if(self.isLongPressing)
                    {
                        self.isLongPressing.toggle()
                        self.timer?.invalidate()
                    } else {
                        self.life -= 1
                    }
                }
            label: {
                ZStack{
                    Image(systemName: "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.3)
                        .opacity(0.3)
                }
            }.tint(.gray)
                    .simultaneousGesture(DragGesture().onEnded{ _ in
                        self.timer?.invalidate()
                    })
                    .simultaneousGesture(LongPressGesture(minimumDuration: 0.5).onEnded { _ in
                        self.isLongPressing = true
                        self.timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { _ in
                            self.life -= 10
                        })
                    })
            }.rotationEffect(.degrees(internalRotation))
            
            Text("\(life)").font(.system(size: 100, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            .rotationEffect(.degrees(internalRotation))
            
        }
    }
}


struct LifeTrackerUI_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            LifeTrackerUI(startingLife: 40, backgroundColor: .indigo)
        }
    }
}
