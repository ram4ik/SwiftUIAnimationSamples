//
//  Conventions.swift
//  SwiftUIAnimationSamples
//
//  Created by ramil on 11.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Conventions: View {
    var body: some View {
        VStack(spacing: 20){
            TitleText("Title")
            SubtitleText("SubtitleText")
            BannerText("Banner text")
        }.font(.title)
    }
}

struct Conventions_Previews: PreviewProvider {
    static var previews: some View {
        Conventions()
    }
}
