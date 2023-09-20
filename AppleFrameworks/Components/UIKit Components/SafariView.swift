//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 20.09.2023.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {  
  let url: URL
 
  func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
    SFSafariViewController(url: self.url)
  }
  
  func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
    
  }
}
