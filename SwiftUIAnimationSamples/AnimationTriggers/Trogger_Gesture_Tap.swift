//
//  Trogger_Gesture_Tap.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trogger_Gesture_Tap: View {
    @State private var isOn = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Trigger")
            SubtitleText("Tap Gesture")
            BannerText("Like a button, you can respond to tap gestures and animate changes on the UI.", backColor: .green)
            Text("Daoble-Tap Circle")
            Spacer()
            Circle()
                .fill(isOn ? Color.green : Color.red)
                .frame(width: 200, height: 200)
                .overlay(Text("ON").opacity(isOn ? 1 : 0))
                .overlay(Text("OFF").foregroundColor(.white).opacity(isOn ? 0 : 1))
                .onTapGesture(count: 2, perform: {
                    self.isOn.toggle()
                })
                .shadow(color: isOn ? .green : .red, radius: 50)
                .animation(.default)
        }
    }
}

struct Trogger_Gesture_Tap_Previews: PreviewProvider {
    static var previews: some View {
        Trogger_Gesture_Tap()
    }
}
