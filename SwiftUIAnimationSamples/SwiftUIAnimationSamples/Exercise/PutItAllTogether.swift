//
//  PutItAllTogether.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct PutItAllTogether: View {
    @State private var change = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: change ? 15 : 0)
                .foregroundColor(change ? Color.orange : Color.red)
                .frame(width: 40, height: 180)
                .offset(x: 25, y: change ? 95 : 180)
                .opacity(change ? 1 : 0)
                .rotationEffect(.degrees(change ? 90 : 0))
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: change ? 15 : 0)
                .foregroundColor(change ? Color.orange : Color.red)
                .frame(width: 40, height: 180)
                .offset(x: -25, y: change ? -95 : -180)
                .opacity(change ? 1 : 0)
                .rotationEffect(.degrees(change ? 90 : 0))
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: change ? 15 : 0)
                .foregroundColor(change ? Color.orange : Color.red)
                .frame(width: 180, height: 40)
                .offset(x: change ? 95 : 180, y: -25)
                .opacity(change ? 1 : 0)
                .rotationEffect(.degrees(change ? 90 : 0))
                .animation(.easeInOut)
            
            RoundedRectangle(cornerRadius: change ? 15 : 0)
                .foregroundColor(change ? Color.orange : Color.red)
                .frame(width: 180, height: 40)
                .offset(x: change ? -95 : -180, y: 25)
                .opacity(change ? 1 : 0)
                .rotationEffect(.degrees(change ? 90 : 0))
                .animation(.easeInOut)
            
            VStack {
                Spacer()
                Button("Change") {
                    self.change.toggle()
                }.padding()
            }
        }
    }
}

struct PutItAllTogether_Previews: PreviewProvider {
    static var previews: some View {
        PutItAllTogether()
    }
}
