//
//  Example_WithAnimation.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Example_WithAnimation: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20){
            TitleText("Example")
            SubtitleText("Parts of Animation")
            BannerText("The button changes a variable that then changes a view's property. That property changecauses a change on the screen.")
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100)
                // 2. The variable's value changing causes the views Y position to change
                .offset(x: 0, y: change ? 300 : 0)
                .animation(Animation.easeInOut)
            Spacer()
            Button("Change"){
                // 1. The button triggers a variable's value to change
                self.change.toggle()
            }.padding()
        }.font(.title)
    }
}

struct Example_WithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Example_WithAnimation()
    }
}
