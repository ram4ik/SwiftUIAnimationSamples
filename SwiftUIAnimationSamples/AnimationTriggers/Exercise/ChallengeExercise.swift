//
//  ChallengeExercise.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 13.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ChallengeExercise: View {
    @State private var change = false
    var body: some View {
        VStack {
            Text("Kluene National Park")
                .font(.title)
            Image("kluene")
                .resizable()
                .frame(width: change ? UIScreen.main.bounds.width - 20 : UIScreen.main.bounds.width * 2,
                       height: change ? (UIScreen.main.bounds.height / 3) - 20 : (UIScreen.main.bounds.height / 3) * 2)
                .scaledToFit()
                .cornerRadius(25)
                //.scaleEffect(change ? 2 : 1)
                .animation(.easeOut)
            Button(action: {
                self.change.toggle()
            }) {
                Image(systemName: "control")
            }.rotationEffect(Angle.degrees(change ? 0 : 180))
            ScrollView(.vertical) {
                Text("Parc national et réserve de parc national de Kluane) are two units of Canada's national park system in the southwest corner of the territory of Yukon. It is near the Alaskan border. Kluane National Park Reserve was established in 1972, covering 22,013 square kilometres (8,499 square miles).")
                .padding()
            }
        }
    }
}

struct ChallengeExercise_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeExercise()
    }
}
