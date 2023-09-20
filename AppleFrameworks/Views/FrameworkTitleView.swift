//
//  FrameworkTitleView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 20.09.2023.
//

import SwiftUI

struct FrameworkTitleView: View {
  let framework: Framework
  
  var body: some View {
    HStack {
      Image(self.framework.imageName)
        .resizable()
        .frame(width: 70, height: 70)
      Text(self.framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.6)
        .padding()
    }    
  }
}

struct FrameworkTitleView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkTitleView(framework: MockData.sampleFramework)
  }
}
