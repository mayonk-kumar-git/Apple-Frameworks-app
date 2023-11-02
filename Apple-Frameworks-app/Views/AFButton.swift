//
//  AFButton.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 02/11/23.
//

import SwiftUI

struct AFButton: View {
    
    var label: String
    
    var body: some View {
        Text(label)
            .frame(width: 280, height: 50)
            .background(.blue.gradient)
            .cornerRadius(10)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
    }
}
