//
//  RadialGradient.swift
//  SwiftUIAnimationSamples
//
//  Created by Ramill Ibragimov on 09.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct RadialGradient_Intro: View {
    @State private var endRadius: CGFloat = 200.0
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.white, Color("ThemesBackground")]), center: UnitPoint.center, startRadius: 10, endRadius: endRadius)
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                Text("RadialGradient").font(.largeTitle)
                Text("End Radial").foregroundColor(.gray)
                Text("The end radius determine the distance of the gradient from the start radius.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("ThemesBackground"))
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("End Radius: \(Int(endRadius))")
                HStack {
                    Text("50")
                    Slider(value: $endRadius, in: 50...400)
                    Text("400")
                }.padding()
            }
            .foregroundColor(Color("ThemesBackShadeColor"))
            .font(.title)
        }
    }
}

struct RadialGradient_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradient_Intro()
    }
}
