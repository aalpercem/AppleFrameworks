//
//  SwiftUIView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct AFCloseButton: View {
  var action: () -> Void
  
  var body: some View {
    HStack {
      Spacer()
      
      Button {
        self.action()
      } label: {
        Image(systemName: "xmark")
          .padding(8)
          .foregroundColor(Color(.label))
          .background(Color(.label).opacity(0.1))
          .imageScale(.large)
          .cornerRadius(20)
          .frame(width: 44, height: 44)
      }
    }
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    AFCloseButton(action: {})
  }
}
