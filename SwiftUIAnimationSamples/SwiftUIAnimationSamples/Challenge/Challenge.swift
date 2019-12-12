//
//  Challenge.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 12.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Challenge: View {
    @State private var change = false
    @State private var login: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            TitleText("Challenge")
                .padding()
            SubtitleText("Show Login")
                .padding()
            Spacer()
            Text("Already have an account?")
            Button("Login Now") {
                self.change.toggle()
            }.padding()
            Group{
                Image(systemName: "lock.shield")
                TextField("Username", text: $login)
                SecureField("Password", text: $password)
            }
            .padding()
            .offset(x: change ? 0 : -UIScreen.main.bounds.width)
            .animation(.easeInOut)
            
            Spacer()
        }
    }
}

struct Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Challenge()
    }
}
