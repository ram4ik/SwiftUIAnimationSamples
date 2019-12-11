//
//  Animate_HueRotation.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Animate_HueRotation: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatabke Properties")
            SubtitleText("Hue")
            BannerText("Another way to change color is to change the hue on the color wheel by rotating the current point.", backColor: .blue, textColor: .white)
            Image("img2")
                .resizable()
                .scaledToFit()
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .padding()
                    .hueRotation(Angle.degrees(change ? 170 : 0))
                    .animation(.easeInOut)
                
                Image("img1")
                    .resizable()
                .scaledToFit()
                    .hueRotation(Angle.degrees(change ? 170 : 0))
                
                Button("Change") {
                    self.change.toggle()
                }.padding()
            }
        }
    }
}

struct Animate_HueRotation_Previews: PreviewProvider {
    static var previews: some View {
        Animate_HueRotation()
    }
}
