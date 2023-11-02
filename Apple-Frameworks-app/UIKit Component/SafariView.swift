//
//  SafariView.swift
//  Apple-Frameworks-app
//
//  Created by Mayonk Kumar Behera on 02/11/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, 
                                context: UIViewControllerRepresentableContext<SafariView>) {
        // this is an empty func implementation just to confirm to UIViewControllerRepresentable
    }
}
