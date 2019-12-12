//
//  Animate_Opacity.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Animate_Opacity: View {
    @State private var show = false
    var body: some View {
        VStack {
            TitleText("Animatable Properties")
            SubtitleText("Opacity")
            BannerText("Opacity is the quality of thickness, solidness of opaquness. The more opacity the more solid something(less transparent.)", backColor: .blue, textColor: .white)
            
            Button("Show/Hide") {
                self.show.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .padding()
                .opacity(show ? 1 : 0)
                .animation(.easeInOut)
        }
    }
}

struct Animate_Opacity_Previews: PreviewProvider {
    static var previews: some View {
        Animate_Opacity()
    }
}
