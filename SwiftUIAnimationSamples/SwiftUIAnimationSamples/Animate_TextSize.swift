//
//  Animate_TextSize.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Animate_TextSize: View {
    @State private var change = false
    var body: some View {
        VStack {
            TitleText("Animate Properties")
            SubtitleText("Text Size")
            BannerText("Take a look at what happens when you try to animate the font size of a text view.", backColor: .blue, textColor: .white)
            
            Button("Change"){
                self.change.toggle()
            }
            Spacer()
            
            Text("Hello")
                .font(.system(size: change ? 80 : 20))
                .animation(.easeInOut)
                .border(Color.blue)
            Spacer()
        }.font(.title)
    }
}

struct Animate_TextSize_Previews: PreviewProvider {
    static var previews: some View {
        Animate_TextSize()
    }
}
