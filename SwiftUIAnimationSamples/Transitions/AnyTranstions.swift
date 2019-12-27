//
//  AnyTranstions.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 27.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct AnyTranstions: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions").foregroundColor(Color("LightShade2"))
                SubtitleText("Introduction").foregroundColor(Color("LightAccent2"))
                BannerText("Use the transition modifier to specify how a view enters and exists the screen.", backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                Button("Change") {
                    self.change.toggle()
                }.foregroundColor(Color("Red"))
                Spacer()
                
                if change {
                    Image("night")
                        .resizable()
                        .scaledToFit()
                        .transition(AnyTransition.slide)
                        .animation(.default)
                }
                Spacer()
            }
            .font(.title)
            .accentColor(Color("Accent2"))
        }
    }
}

struct AnyTranstions_Previews: PreviewProvider {
    static var previews: some View {
        AnyTranstions()
    }
}
