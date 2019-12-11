//
//  ChalengeREcreateAnimation_2.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ChalengeREcreateAnimation_2: View {
    @State private var change = true
    var body: some View {
        VStack{
            TitleText("Challenge")
            SubtitleText("Move the CircleShape")
            ZStack {
                Circle()
                    .foregroundColor(Color.orange)
                    .frame(width: 150, height: 150)
                    .offset(y: self.change ? -300 : 300)
                    .animation(Animation.easeOut)
            }.onAppear(){
                self.change.toggle()
            }
            Button("Change") {
                self.change.toggle()
            }
        }
    }
}

struct ChalengeREcreateAnimation_2_Previews: PreviewProvider {
    static var previews: some View {
        ChalengeREcreateAnimation_2()
    }
}
