//
//  AnimatableProperties.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct AnimatableProperties: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Color")
            BannerText("Animate the change from one color to another", backColor: .blue, textColor: .white)
            Text("With animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? Color.orange : Color.blue)
                .padding()
                .animation(.easeInOut)
            
            Text("No Animation")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? Color.orange : Color.blue)
                .padding()
            
            Button("Change") {
                self.change.toggle()
            }
        }.font(.title)
    }
}

struct AnimatableProperties_Previews: PreviewProvider {
    static var previews: some View {
        AnimatableProperties()
    }
}
