//
//  Duration_Parametrs.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Duration_Parametrs: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 10) {
            TitleText("Animation Options")
            SubtitleText("Dupation Parameter")
            BannerText("To set a duration, you need to turn animation type into a function. Like .easeInOut into .easeInOut(duration 1).", backColor: .purple, textColor: .white)
            
            Text("Duration: Default")
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeOut) // Default duration
            
            Text("Duration: 2 seconds")
            Image(systemName: "tortoise.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 140 : -140, y: 0)
                .animation(.easeInOut(duration: 2)) // Two seconds
            
            Button("Change") {
                self.change.toggle()
            }
            
            BannerText("Note: The default animation duration in SwiftUI is less than a second. Somewhere around 0.4 seconds.", backColor: .purple, textColor: .white)
        }.font(.title)
    }
}

struct Duration_Parametrs_Previews: PreviewProvider {
    static var previews: some View {
        Duration_Parametrs()
    }
}
