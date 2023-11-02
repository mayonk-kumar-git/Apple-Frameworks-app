//
//  ContentView.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 02/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        //        NavigationView{
        //            ScrollView{
        //                LazyVGrid(columns: columns) {
        //                    // if the array or object that your are traversing is confirming to "Identifiable"
        //                    // then we don't need to explicitly mention id: \.id (we can do, but it is redundent)
        //                    // because if the struct that we are travsing is confirming to Identifiable then it
        //                    // will have a id member which will automatically be added to forEach
        //                    ForEach(MockData.frameworks) { framework in
        //                        FrameworkTitleView(framework: framework)
        //                            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        //                            .onTapGesture {
        //                                viewModel.selectedFramework = framework
        //                            }
        //                    }
        //                }
        //                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
        //            }
        //            .navigationTitle("Apple Frameworks")
        //            .sheet(isPresented: $viewModel.isShowingDetailView) {
        //                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
        //                                    isShowingDetailView: $viewModel.isShowingDetailView)
        //            }
        //        }
        
        //----------------------------------------------------------
        //  The NavigationView is getting depricated to its better to use Navigation stact
        //  Below is the code that performs exactly the same as the above
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    // if the array or object that your are traversing is confirming to "Identifiable"
                    // then we don't need to explicitly mention id: \.id (we can do, but it is redundent)
                    // because if the struct that we are travsing is confirming to Identifiable then it
                    // will have a id member which will automatically be added to forEach
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                        }
                        
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
            
        }
    }
}


#Preview {
    FrameworkGridView()
        .modelContainer(for: Item.self, inMemory: true)
}
