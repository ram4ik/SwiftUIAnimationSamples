//
//  Animate_TextSize_ScaleEffect_Solution.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

// Just keep in mind that when you are scalling UP some views
// can get blurred. When this happens you can start with a
// larger size taht is not blurred and scale it down instead.

struct Animate_TextSize_ScaleEffect_Solution: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Pproperties")
            SubtitleText("Text size with ScaleEffect")
            BannerText("Start with the larger font size first(so it's clear) and then scale it down as the begin state.", backColor: .blue, textColor: .white)
            
            Button("Change"){
                self.change.toggle()
            }
            Spacer()
            
            Text("Hello")
                .font(.system(size: 80))
                .scaleEffect(change ? 1 : 0.25)
                .animation(.easeInOut)
                .border(Color.blue)
            
            Spacer()
        }.font(.title)
    }
}

struct Animate_TextSize_ScaleEffect_Solution_Previews: PreviewProvider {
    static var previews: some View {
        Animate_TextSize_ScaleEffect_Solution()
    }
}
