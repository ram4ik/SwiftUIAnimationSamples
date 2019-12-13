//
//  Duration_Long_Example.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Duration_Long_Example: View {
    @State private var change = false
    var body: some View {
        ZStack {
            Image(systemName: "cloud.sun.fill")
                .font(.system(size: 200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? 240 : -240, y: 20)
                .animation(.linear(duration: 15))
            
            Image(systemName: "cloud.fill")
                .font(.system(size: 200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? -240 : 240, y: 200)
                .animation(.linear(duration: 10))
            
            VStack(spacing: 20) {
                TitleText("Anmation Options")
                SubtitleText("Long Duration Example")
                BannerText("Sometimes you want a very long duration to create subtle effect on your UI.", backColor: .purple, textColor: .white)
                Spacer()
                Button("Change") {
                    self.change.toggle()
                }
            }.font(.title)
        }
    }
}

struct Duration_Long_Example_Previews: PreviewProvider {
    static var previews: some View {
        Duration_Long_Example()
    }
}
