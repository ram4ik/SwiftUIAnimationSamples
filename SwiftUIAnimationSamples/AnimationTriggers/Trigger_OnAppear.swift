//
//  Trigger_OnAppear.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_OnAppear: View {
    @State private var expand = false
    var body: some View {
        ZStack {
            Image(systemName: "sun.max.fill")
                .padding()
                .foregroundColor(.white)
                .background(Circle()
                    .fill(Color.green)
                    .scaleEffect(expand ? 20 : 1)
                    .edgesIgnoringSafeArea(.all))
                // Change a value that will trigger the animation
                .onAppear() { self.expand.toggle() }
                .animation(.easeIn)
            
            VStack(spacing: 20) {
                TitleText("Triggers")
                SubtitleText("On Appear")
                BannerText("You can have an animaton start as soon as a view appears.", backColor: .green)
                Spacer()
            }
        }.font(.title)
    }
}

struct Trigger_OnAppear_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_OnAppear()
    }
}
