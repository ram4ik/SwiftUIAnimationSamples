//
//  Popup.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Popup: View {
    @State private var showPopup = true // Controls if the popup shows or not
    @GestureState private var popupOffset = CGSize.zero // Track the distance dragged
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                TitleText("Triggers")
                SubtitleText("Show Popup")
                BannerText("The initial setup is pretty easy. Be sure to include a ZSyack as the root view because the popup will be on top of everything.", backColor: .yellow)
                Spacer()
                Button("Shoe Popup") {
                    // Show popup
                    self.showPopup = true
                }
            }.font(.title)
                // Blur the background when popup is showing
                .blur(radius: showPopup ? 2 : 0)
                .animation(.easeOut) // Animate the blur and unblur
            
            // The popup
            // Put the Popup inside an if
            if showPopup {
                ZStack {
                    // Background transparent color
                    Color.black
                        .opacity(0.4)
                        .edgesIgnoringSafeArea(.all)
                        // Dismiss popup
                        .onTapGesture {
                            self.showPopup = false
                    }
                    
                    VStack(spacing: 20) {
                        Text("Drag popup off the screen")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow)
                        Spacer()
                        Text("You can also tap outside of the popup ro close")
                        Spacer()
                        Button("Or Tap This Button ti Close") {
                            // Dismiss group
                            self.showPopup = false
                        }.padding(.bottom)
                    }.frame(height: 300)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(radius: 20)
                        .padding(.horizontal, 25)
                        .offset(popupOffset) // Offset (move) the popup when dragged
                        .gesture(
                            DragGesture(minimumDistance: 100) // They have to drag it over 100 points
                                .updating($popupOffset, body: { (value, popupOffset, transaction) in
                                    // Assign distance traveled (translation) to popupOffset (Gesture State variable that is bound:
                                    
                                    popupOffset = value.translation
                                })
                                .onEnded({ (value) in
                                    // If they dragged the popup over 100 points then just close the popup
                                    self.showPopup = false
                                })
                            
                    )
                }.animation(.default) // Animate the popup
            }
        }.animation(.easeIn) // This animation will be used to hide/show the popup
    }
}

struct Popup_Previews: PreviewProvider {
    static var previews: some View {
        Popup()
    }
}
