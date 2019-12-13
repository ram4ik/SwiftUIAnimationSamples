//
//  Trigger_Gesture_LongPress.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_Gesture_LongPress: View {
    @State private var isLongPressed = false
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Trigger")
            SubtitleText("Long Press Gesture")
            BannerText("You can start an animation with a long press gesture.", backColor: .green)
            Spacer()
            Circle()
                .fill(isLongPressed ? Color.blue : Color.green)
                .frame(width: 200, height: 200)
            .overlay(Text("Long Press"))
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 5)
                    .scaleEffect(isLongPressed ? 2 : 1)
                    .opacity(isLongPressed ? 0 : 1))
                .onLongPressGesture {
                    self.isLongPressed.toggle()
            }.animation(.default)
            Spacer()
        }.font(.title)
    }
}

struct Trigger_Gesture_LongPress_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_LongPress()
    }
}
