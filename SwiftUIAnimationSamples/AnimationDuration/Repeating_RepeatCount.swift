//
//  Repeating_RepeatCount.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Repeating_RepeatCount: View {
    @State private var start = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Repeating")
            SubtitleText("Repeat Count")
            BannerText("You might want an animation to repeat only a certain number of times.", backColor: .green)
            Spacer()
            Button("Start", action: { self.start.toggle() } )
                .font(.largeTitle)
            .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.green, lineWidth: 4)
                    .scaleEffect(start ? 2 : 1)
                    .opacity(start ? 0 : 1)
            ).animation(Animation.easeOut(duration: 0.6).repeatCount(3, autoreverses: false))
            Spacer()
        }.font(.title)
    }
}

struct Repeating_RepeatCount_Previews: PreviewProvider {
    static var previews: some View {
        Repeating_RepeatCount()
    }
}
