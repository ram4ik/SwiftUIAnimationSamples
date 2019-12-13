//
//  DelayAnimation.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DelayAnimation: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Delay Animations")
            SubtitleText("Introduction")
            BannerText("You can delay an animation after it is triggered.", backColor: .red, textColor: .white)
            Text("Wait 1.5 second after this view loads before animationg.").padding(.horizontal)
            GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("Hello")
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }.font(.system(size: 50))
                    
                    HStack(spacing: 0) {
                        Rectangle()
                            .offset(x: self.change ? -geometry.size.width / 2 : 0)
                        Rectangle()
                            .offset(x: self.change ? geometry.size.width / 2 : 0)
                    }
                    .foregroundColor(.red)
                    .animation(Animation.default.delay(1.5))
                }
            }
        }.font(.title)
        .edgesIgnoringSafeArea(.bottom)
            .onAppear() {
                self.change = true
        }
    }
}

struct DelayAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DelayAnimation()
    }
}
