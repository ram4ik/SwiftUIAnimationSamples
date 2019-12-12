//
//  Challenge_2.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Challenge_2: View {
    @State private var change = false
    var body: some View {
        VStack {
            TitleText("Challenge")
                .padding()
            SubtitleText("Show a Menu")
                .padding()
            Button("Show Menu") {
                self.change.toggle()
            }.padding()
            Spacer()
            ZStack {
                Rectangle()
                    .cornerRadius(25)
                    .foregroundColor(Color.blue)
                    .frame(width: UIScreen.main.bounds.width - 20, height: change ? 300 : 0)
                    .opacity(change ? 1 : 0)
                VStack {
                    Image(systemName: "scribble")
                        .foregroundColor(.white)
                        .padding()
                    Text("My Menu")
                        .foregroundColor(.white)
                        .padding()
                    
                }.offset(y: -90)
            }.animation(.easeInOut)
        }
    }
}

struct Challenge_2_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_2()
    }
}
