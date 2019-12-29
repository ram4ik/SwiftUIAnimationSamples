//
//  AsymmetricTransitions.swift
//  SwiftUIAnimationSamples
//
//  Created by Ramill Ibragimov on 29.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI
import MapKit

struct AsymmetricTransitions: View {
    @State private var showHelp = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing: 20) {
                TitleText("Transitions").foregroundColor(Color("LightShade2"))
                SubtitleText("Asymmetric Introduction").foregroundColor(Color("LightAccent2"))
                BannerText("Use withAnimation to provide different animations for insertion and removal.", backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                ZStack(alignment: .topTrailing) {
                    MapView()
                    Button(action: {
                        // Use withAnimation to pecify an animation you want to use when inserting the view
                        withAnimation(.spring()) {
                            self.showHelp = true
                        }
                    }, label: {
                        Image(systemName: "questionmark.circle.fill")
                    }).padding()
                }.edgesIgnoringSafeArea(.vertical)
            }
            
            if showHelp {
                VStack(spacing: 20) {
                    Text("Help")
                        .foregroundColor(Color("LightShade2"))
                    Image("night")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    Button("Close") {
                        // Specify a different animation when removing the view
                        withAnimation(.easeIn) {
                            self.showHelp = false
                        }
                    }
                }
            }
        }
    }
}

struct AsymmetricTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AsymmetricTransitions()
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

  func updateUIView(_ uiView: MKMapView, context: Context) {
  }
}
