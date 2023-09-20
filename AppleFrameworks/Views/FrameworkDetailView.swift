//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
  
  var framework: Framework
  @Binding var isShowingDetailView: Bool
  @State private var isShowingSafariView: Bool = false
  
  var body: some View {
    VStack(spacing: 30) {      
      Spacer()
      
      FrameworkTitleView(framework: framework)
      
      Text(framework.description)
        .font(.body)
      
      Spacer()
      
      AFButton(
        buttonTitle: "Learn More",
        action: {
          print("Learn More button tapped")
          self.isShowingSafariView = true
        }
      )
    }
    .padding()
    .sheet(isPresented: self.$isShowingSafariView) {
      SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
    }
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(
      framework: MockData.sampleFramework,
      isShowingDetailView: .constant(false)
    )
  }
}
