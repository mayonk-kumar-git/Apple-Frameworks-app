//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 02/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    //---------------------------------------------------------------------
    // We don't need all that if we are using NavigationStack,
    // We only need that for NavigationView
    
    //    @Published var isShowingDetailView = false
    //
    //    var selectedFramework: Framework? {
    //        didSet {
    //            isShowingDetailView = true
    //        }
    //    }
    //---------------------------------------------------------------------
}
