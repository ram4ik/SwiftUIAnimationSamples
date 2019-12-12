//
//  Exercise1_TheSetup.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Exercise1_TheSetup: View {
    @State private var change = false
    var offsetValue: CGFloat = 200 // Centralize the offset value
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Exercise")
            SubtitleText("The Setup")
            BannerText("The first thing you want to do is to build the end state of your animation. This will be WAY easier that building the begin state and trying to animate it together.", backColor: .red, textColor: .white)
            Spacer()
            
            // Logo Composition
            VStack(spacing: 1) {
                HStack(alignment: .bottom, spacing: 1) {
                    Rectangle()
                        .frame(width: 70, height: 35)
                        .offset(x: change ? 0 : -offsetValue) // Move left
                    Rectangle()
                        .frame(width: 35, height: 70)
                        .offset(y: change ? 0 : -offsetValue) // Move up
                }.offset(x: -18) // Move left
                
                HStack(alignment: .top, spacing: 1) {
                    Rectangle()
                        .frame(width: 36, height: 72)
                        .offset(y: change ? 0 : offsetValue) // Move down
                    Rectangle()
                        .frame(width: 72, height: 36)
                        .offset(x: change ? 0 : offsetValue) // Move right
                }.offset(x: 10) // Move right
            }
            .rotationEffect(.degrees(change ? 0 : -90))
            .foregroundColor(change ? .red : .orange)
            .opacity(change ? 1 : 0)
            .animation(.default)
            
            Spacer()
            Button("Change") {
                self.change.toggle() // Nothing will happend yet
            }.padding(.bottom)
        }.font(.title)
    }
}

struct Exercise1_TheSetup_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1_TheSetup()
    }
}
