//
//  FrameworkDetailView.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 02/11/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    // We only need this isShowingDetailView i.e.
    // a boolean to denote whether to show the DetailView or not
    // in NavigationView, NavigationStack don't need this kind of a variable
    //    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
//            HStack{
//                Spacer()
//                Button{
//                    // isShowingDetailView = false
//                } label: {
//                    Image(systemName: "xmark")
//                    // Color(.lablel) -> this is essentily invert color
//                    // if the backgroud is black it will be white and vice versa
//                        .foregroundColor(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44, height: 44)
//                }
//            }
            
//            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(label: "Learn More")
            }
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .padding()
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)
                       ?? URL(string:"www.apple.com")!)
        })
    }
}

#Preview {
    //    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    FrameworkDetailView(framework: MockData.sampleFramework)
}
