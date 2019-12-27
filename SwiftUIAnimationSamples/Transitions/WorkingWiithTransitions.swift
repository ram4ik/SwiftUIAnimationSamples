//
//  WorkingWiithTransitions.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 27.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct WorkingWiithTransitions: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions")
                    .foregroundColor(Color("LightShade2"))
                SubtitleText("Using Animation Solution")
                    .foregroundColor(Color("LightAccent2"))
                BannerText("Transitions work with views that are inserted and removed from the screen (view hierarchy). Insertion and removal will adjust views around them.", backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                Button("Change") {
                    self.change.toggle()
                }.foregroundColor(Color("Red"))
                
                if change {
                    Image("night")
                        .resizable()
                        .scaledToFit()
                        .transition(AnyTransition.slide.combined(with: .opacity))
                        // I combined the slide with opacity so it fades in and out too.
                }
                
                BannerText("Solution: Use animation on parent view.", backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
            }
            .font(.title)
            .accentColor(Color("Accent2"))
            .animation(.default)
            // By adding animation on the parent, the child views will animate when making room for the insertion of a new view.
        }
    }
}

struct WorkingWiithTransitions_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWiithTransitions()
    }
}
