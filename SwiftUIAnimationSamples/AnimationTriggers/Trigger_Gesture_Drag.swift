//
//  Trigger_Gesture_Drag.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Trigger_Gesture_Drag: View {
    @State private var menuOffset = CGSize.zero
    @State private var currentMenuY: CGFloat = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            TitleText("Triggers")
            SubtitleText("Drag Gesture")
            BannerText("Dragging a view will move it but you can add animation to complete moving a view into its final location smoothy.", backColor: .green)
            Spacer()
            VStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .overlay(Image(systemName: "line.horizontal.3")
                        .foregroundColor(.white)
                        .offset(x: 0, y: -20))
                    .offset(x: 0, y: -50)
                
                HStack {
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 200)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
            .offset(x: 0, y: currentMenuY + menuOffset.height)
//            .gesture(
//                DragGesture()
//                    .updating($menuOffset, body: { (value, menuOffset, transaction) in
//                        menuOffset = value.translation
//                    })
//                    .onEnded({ value in
//                        if value.translation.height > 100 {
//                            self.currentMenuY = 200
//                        } else {
//                            self.currentMenuY = 0
//                        }
//                    })
//            ).animation(.default)
        }.font(.title)
    }
}

struct Trigger_Gesture_Drag_Previews: PreviewProvider {
    static var previews: some View {
        Trigger_Gesture_Drag()
    }
}
