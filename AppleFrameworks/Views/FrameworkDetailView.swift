//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct FrameworkDetailView: View {
  
  var framework: Framework
  
  var body: some View {
    VStack(spacing: 15) {      
      HStack {
        Spacer()
        AFCloseButton(action: {print("Close button tapped")})
      }
      
      Spacer()
      
      FrameworkTitleView(framework: framework)
      
      Text(framework.description)
        .font(.body)
      
      Spacer()
      
      AFButton(buttonTitle: "Learn More", action: {print("Learn More button tapped")})
    }
    .padding()
  }
}

struct FrameworkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkDetailView(
      framework: MockData.sampleFramework
    )
  }
}
