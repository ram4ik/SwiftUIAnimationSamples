//
//  Scope_WithAnimation.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Scope_WithAnimation: View {
    @State private var flipHorizantally = false
    var body: some View {
        VStack(spacing: 20){
            TitleText("With Animation")
            SubtitleText("Introduction")
            BannerText("The witAnimation closure says, 'Anything that changes as a result of any values changing inside this closure will use this animation.'", backColor: .yellow, textColor: .black)
            
            Button(action: {
                withAnimation {
                    // Animate any visual changes this causes
                    self.flipHorizantally.toggle()
                }
            }) {
                Image(systemName: "flip.horizontal.fill")
                    .font(.system(size: 50))
                    .padding()
            }
            
            Image("day")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(30)
                .padding()
                .scaleEffect(x: flipHorizantally ? -1 : 1, y: 1)
        }.font(.title)
    }
}

struct Scope_WithAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Scope_WithAnimation()
    }
}
