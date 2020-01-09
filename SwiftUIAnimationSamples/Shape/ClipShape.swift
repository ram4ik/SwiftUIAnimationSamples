//
//  ClipShape.swift
//  SwiftUIAnimationSamples
//
//  Created by Ramill Ibragimov on 09.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ClipShape: View {
    var body: some View {
        ClipShape_Intro()
    }
}

struct ClipShape_Previews: PreviewProvider {
    static var previews: some View {
        ClipShape()
    }
}

struct ClipShape_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("ClipShape").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Text("Only show the part of the view that the shape covers.")
            
            Text("Original")
            Image("img1")
                .resizable()
                .scaledToFit()
            
            Text("Clipped")
            HStack(spacing: 60) {
                Image("img2")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image("img3")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }.padding()
            
            Button(action: {}) {
                Text("Explorer")
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 5, x: 0, y: 0)
            }
            .frame(width: 200, height: 75)
            .background(Image("yosemite")
                .resizable()
                .scaledToFit()
            .clipShape(Capsule()))
        }
    }
}
