//
//  ChalengeRecreateAnimation.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ChalengeRecreateAnimation: View {
    @State private var change = false
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                Button("Change") {
                    self.change.toggle()
                }.padding()
            }
            Circle()
                .foregroundColor(Color.orange)
                .frame(width: 30, height: 30)
                .offset(x: self.change ? -150 : 150, y: self.change ? -150 : 150)
                .animation(Animation.easeInOut)
            Circle()
                .foregroundColor(Color.green)
                .frame(width: 30, height: 30)
                .offset(y: self.change ? -250 : 250)
                .animation(Animation.easeIn)
            Circle()
                .foregroundColor(Color.blue)
                .frame(width: 30, height: 30)
                .offset(x: self.change ? 150 : -150, y: self.change ? -150 : 150)
                .animation(Animation.easeOut)
            
            Circle()
                .foregroundColor(Color.purple)
                .frame(width: 30, height: 30)
                .offset(x: !self.change ? 150 : -150, y: !self.change ? -150 : 150)
                .animation(Animation.easeIn)
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 30, height: 30)
                .offset(y: !self.change ? -250 : 250)
                .animation(Animation.easeOut)
            Circle()
                .foregroundColor(Color.red)
                .frame(width: 30, height: 30)
                .offset(x: !self.change ? -150 : 150, y: !self.change ? -150 : 150)
                .animation(Animation.easeInOut)
        }.onAppear() {
            self.change.toggle()
        }
    }
}

struct ChalengeRecreateAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ChalengeRecreateAnimation()
    }
}
