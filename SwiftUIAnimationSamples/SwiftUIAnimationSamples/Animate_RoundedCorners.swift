//
//  Animate_RoundedCorners.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Animate_RoundedCorners: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Animatable Properties")
            SubtitleText("Corner Radius")
            BannerText("You privide a value to set the corner radius of a view. The change of this property can be animated.", backColor: .blue, textColor: .white)
            
            Button("Change") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: change ? 0 : 70)
                .foregroundColor(.blue)
                .padding()
                .animation(.easeInOut)
            
            Text("You can NOT animate the cornerRadius modifier.")
                .padding(25)
                .background(Color.blue)
                .cornerRadius(change ? 0 : .infinity) // cannot animate this
                .animation(.easeInOut) // this will not work
        }.font(.title)
    }
}

struct Animate_RoundedCorners_Previews: PreviewProvider {
    static var previews: some View {
        Animate_RoundedCorners()
    }
}
