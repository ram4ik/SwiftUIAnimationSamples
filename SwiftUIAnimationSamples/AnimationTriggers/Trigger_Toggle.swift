//
//  Trigger_Toggle.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_Toggle: View {
    @State private var isOn = false
    @State private var extraInfo = ""
    @State private var extraAmount = 0.65
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Toggle")
            BannerText("The toggle can also be used to trigger animations. MAybe you want to enable or show options.", backColor: .green)
            
            Toggle("Extra Options", isOn: $isOn).padding()
            
            Group {
                VStack(spacing: 20) {
                    Image(systemName: "hammer.fill")
                    Text("Your extra options")
                    TextField("Extra info", text: $extraInfo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Slider(value: $extraAmount)
                }.padding(28)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
            }.padding(.horizontal)
            .saturation(isOn ? 1 : 0)
            .opacity(isOn ? 1 : 0.25)
            .animation(.default)
        }.font(.title)
    }
}

struct Trigger_Toggle_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Toggle()
    }
}
