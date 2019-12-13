//
//  Scope_ParentAndChildren.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Scope_ParentAndChildren: View {
    @State private var change = false
    var body: some View {
        VStack(spacing: 20){
            TitleText("Options")
            SubtitleText("Scope - Parent & Children")
            BannerText("The animation modifier can go on a parent view to animate all children within.", backColor: .yellow, textColor: .black)
            .layoutPriority(1)
            
            HStack {
                Color.blue.hueRotation(Angle.degrees(change ? 100 : 0))
                Color.green.hueRotation(Angle.degrees(change ? 100 : 0))
                Color.red.hueRotation(Angle.degrees(change ? 100 : 0))
            }.animation(.linear)
            
            Button("Change"){
                self.change.toggle()
            }
        }.font(.title)
    }
}

struct Scope_ParentAndChildren_Previews: PreviewProvider {
    static var previews: some View {
        Scope_ParentAndChildren()
    }
}
