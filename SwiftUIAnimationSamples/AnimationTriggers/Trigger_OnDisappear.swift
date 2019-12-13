//
//  Trigger_OnDisappear.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_OnDisappear: View {
    @State private var showTip = true
    @State private var showTipButtons = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("On Disappear")
            BannerText("When you make a view go away, you can triger an animation on how it disappear.", backColor: .green)
            Spacer()
            if showTip {
                VStack(spacing: 20) {
                    HStack {
                        Image(systemName: "info.circle.fill")
                        Spacer()
                        Text("Tip of the Day")
                        Spacer()
                    }.foregroundColor(.white)
                    Spacer()
                    Button("Got it") {
                        self.showTip.toggle()
                    }
                }.padding()
                .background(Rectangle().fill(Color.green).shadow(radius: 3))
                .padding(.horizontal)
                .frame(height: 200)
                    .onDisappear(){
                        // Gets triggered when the view is removed from the screen
                        self.showTipButtons = true
                }
            }
            
            if showTipButtons {
                HStack {
                    Button(action: {
                        self.showTipButtons = false
                        self.showTip = true
                    }) {
                        Image(systemName: "info.click")
                    }.padding(.leading, 24)
                    Spacer()
                }
            }
        }.animation(.default) // Animate the adding and removing of views from the screen
        .font(.title)
    }
}

struct Trigger_OnDisappear_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_OnDisappear()
    }
}
