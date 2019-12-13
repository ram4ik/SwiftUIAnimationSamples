//
//  Trigger_SegmentedControl.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_SegmentedControl: View {
    @State private var segment = 0
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Segmented Control")
            BannerText("A segmented control (picker) can also trigger animations, such as sliding views into and out of place.", backColor: .green)
            
            Picker("Day & NIght", selection: $segment) {
                Text("Day sun ☀️").tag(0)
                Text("Night 🌙").tag(1)
            }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal)
            
            GeometryReader { gr in
                ZStack {
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Image(systemName: "sun.max.fill").font(.system(size: 50))
                            Spacer()
                        }.padding(.top, 24)
                        Text("The Day Report")
                        Spacer()
                    }.background(Image("day").aspectRatio(contentMode: ContentMode.fill))
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    // Offset depending on segment selected
                    .offset(x: self.segment == 0 ? 0 : -gr.size.width, y: 0)
                    .animation(.default) // Animate offset
                    
                    VStack(spacing: 20) {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(systemName: "moon.fill").font(.system(size: 50))
                            Spacer()
                        }
                        Text("The Night Report")
                            .padding(.bottom, 24)
                    }.background(Image("night").aspectRatio(contentMode: ContentMode.fill))
                    .cornerRadius(20)
                    .foregroundColor(.orange)
                    // Offset depending on segment selected
                    .offset(x: self.segment == 1 ? 0 : gr.size.width, y: 0)
                    .animation(.default) // Animate offset
                }.shadow(radius: 15)
                    .padding(.horizontal)
            }
        }.font(.title)
    }
}

struct Trigger_SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_SegmentedControl()
    }
}
