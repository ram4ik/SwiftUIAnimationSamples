//
//  Animate_RotationEffect.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Animate_RotationEffect: View {
    @State private var change = false
    var body: some View {
        VStack {
            TitleText("Animatable Properties")
            SubtitleText("Rotation Effect")
            BannerText("Rotattions are also animatble.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 300, height: 200)
                .overlay(Image(systemName: "arrow.right").foregroundColor(.black))
                .rotationEffect(Angle.degrees(change ? 220 : 0))
                .animation(.easeInOut)
            
            Spacer()
        }.font(.title)
    }
}

struct Animate_RotationEffect_Previews: PreviewProvider {
    static var previews: some View {
        Animate_RotationEffect()
    }
}
