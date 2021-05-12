//
//  SunView.swift
//  DayNightToggle
//
//  Created by Matthew Chukwuemeka on 12/05/2021.
//

import SwiftUI

struct SunView: View {
    @State var viewAppeared: Bool = false
    
    var body: some View{
        ZStack {
            ForEach(0 ..< 8) { i in
                Color.sun
                    .cornerRadius(4)
                    .frame(width: 5, height: 5)
                    .scaleEffect(viewAppeared ? 1 : 0)
                    .offset(x: 18, y: 18)
                    .rotationEffect(.degrees(45 * Double(i)))
                    .animation(.default.delay(0.1 * Double(i)))
            }
        }.onAppear{
            self.viewAppeared.toggle()
        }
    }
}

struct SunView_Preview: PreviewProvider{
    static var previews: some View{
        SunView()
    }
}
