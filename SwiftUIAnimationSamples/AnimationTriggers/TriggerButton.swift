//
//  TriggerButton.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct TriggerButton: View {
    @State private var showButtons = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 20) {
                TitleText("Triggers")
                SubtitleText("Buttons")
                BannerText("You've seen this example a lot now. The tap of a button triggers the start of the animation", backColor: .green)
                Spacer()
            }
            Group {
                Button(action: { self.showButtons.toggle() }) {
                    Image(systemName: "bag.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : -90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: 0, y: showButtons ? -150 : 0)
                .opacity(showButtons ? 1 : 0)
                
                Button(action: { self.showButtons.toggle() }) {
                    Image(systemName: "gauge.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
                .opacity(showButtons ? 1 : 0)
                
                Button(action: { self.showButtons.toggle() }) {
                    Image(systemName: "calendar.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -150 : 0)
                .opacity(showButtons ? 1 : 0)
                
                Button(action: { self.showButtons.toggle() }) {
                    Image(systemName: "plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 45 : 0))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
            } // Apply these modifiers to every view inside the Group
            .padding(.trailing, 20)
            .accentColor(.white)
            .animation(.default)
        }
        .font(.title)
    }
}

struct TriggerButton_Previews: PreviewProvider {
    static var previews: some View {
        TriggerButton()
    }
}
