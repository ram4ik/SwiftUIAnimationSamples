//
//  CurveExamples.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct CurveExamples: View {
    @State private var change = false
    var body: some View {
        VStack {
            Spacer()
            TitleText("Curve")
            SubtitleText("Examples")
            BannerText("There is 4 presset animation curves available.")
            Spacer()
            Group {
                Text("easeInOut & default: Slow, faster, slow")
                HStack {
                    Circle()
                        .foregroundColor(Color.orange)
                        .frame(width: 42, height: 42)
                        .padding(self.change ? .trailing : .leading)
                        .animation(Animation.easeInOut)
                        .offset(x: self.change ? -100 : 100)
                }.padding(.horizontal, 8)
                Text("easeIn: Start slow")
                HStack {
                    Circle()
                        .foregroundColor(Color.orange)
                        .frame(width: 42, height: 42)
                        .padding(self.change ? .trailing : .leading)
                        .animation(Animation.easeIn)
                        .offset(x: self.change ? -100 : 100)
                }.padding(.horizontal, 8)
                Text("easeOut: Slows at end")
                HStack {
                    Circle()
                        .foregroundColor(Color.orange)
                        .frame(width: 42, height: 42)
                        .padding(self.change ? .trailing : .leading)
                        .animation(Animation.easeOut)
                        .offset(x: self.change ? -100 : 100)
                }.padding(.horizontal, 8)
                Text("linear: Same speed")
                HStack {
                    Circle()
                        .foregroundColor(Color.orange)
                        .frame(width: 42, height: 42)
                        .padding(self.change ? .trailing : .leading)
                        .animation(Animation.linear)
                        .offset(x: self.change ? -100 : 100)
                }.padding(.horizontal, 8)
            }.padding(8)
            Spacer()
            Button("Run"){
                self.change.toggle()
            }
        }
        .padding(8)
        .onAppear(){
            self.change.toggle()
        }
    }
}

struct CurveExamples_Previews: PreviewProvider {
    static var previews: some View {
        CurveExamples()
    }
}
