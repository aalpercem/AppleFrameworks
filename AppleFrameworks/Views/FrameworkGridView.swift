//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct FrameworkGridView: View {
  let columns: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  
  var body: some View {
    NavigationView {
      ScrollView(showsIndicators: false) {
        LazyVGrid(columns: self.columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkTitleView(framework: framework)
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
    }
  }
}

struct FrameworkTitleView: View {
  let framework: Framework
  
  var body: some View {
    VStack {
      Image(self.framework.imageName)
        .resizable()
        .frame(width: 90, height: 90)
      Text(self.framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.6)
    }
    .padding()
  }
}

struct FrameworkGridView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
  }
}
