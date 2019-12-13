//
//  Speed_Intro.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Speed_Intro: View {
    @State private var change = false
    let duration = 1.0
    
    var body: some View {
        VStack(spacing: 20){
            TitleText("Speed")
            SubtitleText("Introduction")
            BannerText("Animations have a speed modifier that allows you to slow down or speed up animations")
            Button("Change"){
                self.change.toggle()
            }
            Text("Normal")
            Circle()
                .fill(Color.orange)
                .frame(height: 70)
                .offset(x: change ? 170 : -170)
                .animation(Animation.easeInOut(duration: duration))
            Text("2X Faster")
            Circle()
                .fill(Color.orange)
                .frame(height: 70)
                .offset(x: change ? 170 : -170)
                .animation(Animation.easeInOut(duration: duration).speed(2))
            Text("Half Slower")
            Circle()
                .fill(Color.orange)
                .frame(height: 70)
                .offset(x: change ? 170 : -170)
                .animation(Animation.easeInOut(duration: duration).speed(0.5))
        }.font(.title)
    }
}

struct Speed_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Speed_Intro()
    }
}
