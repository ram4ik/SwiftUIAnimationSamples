//
//  Transitions.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 27.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Transitions: View {
    @State private var step1 = true
    
    var body: some View {
        ZStack {
            Color("Background3")
                .edgesIgnoringSafeArea(.vertical)
            
            // Step 1
            VStack(spacing: 60) {
                Spacer()
                
                if step1 {
                    Text("Ready to travel?")
                        .bold()
                        .foregroundColor(Color("Secondary3"))
                        .transition(AnyTransition.move(edge: .leading))
                        .animation(Animation.easeOut(duration: 1.1))
                }
                
                if step1 {
                    VStack(spacing: 60) {
                        Image("night")
                            .resizable()
                            .scaledToFit()
                            .animation(Animation.easeIn(duration: 1))
                        
                        Capsule()
                        .fill(Color("Secondary3"))
                            .frame(height: 100)
                            .offset(x: -50)
                            .animation(Animation.easeInOut(duration: 0.6))
                            .overlay(Text("Let's go!"))
                            .foregroundColor(Color("Foreground3"))
                            .animation(Animation.easeInOut(duration: 0.6))
                    }
                    .transition(.move(edge: .leading))
                }
            }
        }
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}
