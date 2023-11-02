//
//  FrameworkTitleView.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 03/11/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(Color(.label))
        }
        .padding()
    }
}
