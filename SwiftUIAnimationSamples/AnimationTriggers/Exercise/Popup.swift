//
//  Popup.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Popup: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                TitleText("Triggers")
                SubtitleText("Show Popup")
                BannerText("The initial setup is pretty easy. Be sure to include a ZSyack as the root view because the popup will be on top of everything.", backColor: .yellow)
                Spacer()
                Button("Shoe Popup") {
                    // Show popup
                }
            }.font(.title)
            
            // The popup
            ZStack {
                // Background transparent color
                Color.black
                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Text("Drag popup off the screen")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow)
                    Spacer()
                    Text("You can also tap outside of the popup ro close")
                    Spacer()
                }
            }
        }
    }
}

struct Popup_Previews: PreviewProvider {
    static var previews: some View {
        Popup()
    }
}
