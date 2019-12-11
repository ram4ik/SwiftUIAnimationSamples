//
//  BannerText.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct BannerText: View {
    var text: String
    var backColor: Color
    var textColor: Color
    var body: some View {
        Text(text)
            .font(.title)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backColor)
            .foregroundColor(textColor)
    }
    
    init(_ text: String, backColor: Color = Color.orange, textColor: Color = Color.primary){
        self.text = text
        self.backColor = backColor
        self.textColor = textColor
    }
}
