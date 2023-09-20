//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 20.09.2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
  
  @Published var selectedFramework: Framework?
  @Published var isShowingDetailView: Bool = false
}
