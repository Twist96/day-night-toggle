//
//  ContentView.swift
//  DayNightToggle
//
//  Created by Matthew Chukwuemeka on 12/05/2021.
//

import SwiftUI

struct MoonToggleView: View {
    
    @State var isDayTime: Bool = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                .opacity(isDayTime ? 0 : 1)
                .animation(Animation.easeInOut(duration: 0.35))
            Color.white
                .ignoresSafeArea()
                .opacity(isDayTime ? 1 : 0)
                .animation(Animation.easeInOut(duration: 0.35))
            Circle()
                .foregroundColor(.white)
                .colorMultiply(self.isDayTime ? Color.sun : Color.white)
                .shadow(
                    color: isDayTime ? Color.black.opacity(0.2) : Color.white.opacity(0.2),
                    radius: 5)
                .scaleEffect(isDayTime ? 0.65 : 1)
                .animation(Animation.easeInOut(duration: 0.35))
                .frame(width: 48, height: 48)
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(isDayTime ? .white : .black)
                .offset(x: 17, y: -17)
                .scaleEffect(isDayTime ? 0 : 1)
                .animation(Animation.easeInOut(duration: 0.35))
            if isDayTime{
                SunView()
            }
        }
        .onTapGesture {
            isDayTime.toggle()
        }.scaleEffect(1.25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoonToggleView()
    }
}
