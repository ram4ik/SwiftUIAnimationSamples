//
//  Trigger_ScrollLocation.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_ScrollLocation: View {
    var colors: [Color] = [.green, .blue, .red, .purple, .pink, .orange, .yellow]
    var body: some View {
        VStack(spacing: 10) {
            TitleText("Trigger")
            SubtitleText("ScrollView")
            BannerText("Alltough no animation modifier is used, the ScrollView is changing values (locations of views) that you can use to modify views. Here is a parallax effect as an example.", backColor: .green)
            
            ScrollView {
                ZStack {
                    GeometryReader { gr in
                        Image("img2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            // By modifying the Y offset while scrolling you can change the scroll speed
                            .offset(y: -gr.frame(in: .global).origin.y / 2)
                    }
                    VStack(spacing: 40) {
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                        RoundedRectangle(cornerRadius: 20).frame(height: 200).opacity(0.7)
                    }.padding(40)
                }.edgesIgnoringSafeArea(.vertical)
            }
        }.font(.title)
    }
}

struct Trigger_ScrollLocation_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_ScrollLocation()
    }
}
