//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct FrameworkGridView: View {
  
  @ObservedObject var viewModel = FrameworkGridViewModel()
  
  var body: some View {
    NavigationView {
      List {
        ForEach(MockData.frameworks) { framework in
          NavigationLink(
            destination: FrameworkDetailView(
              framework: framework,
              isShowingDetailView: $viewModel.isShowingDetailView
            )
          ) {
            FrameworkTitleView(framework: framework)
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
    }
    .tint(Color(.label))
  }
}

struct FrameworkGridView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
  }
}
