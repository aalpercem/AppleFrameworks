//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct AFButton: View {
  var buttonTitle: String
  var foregroundColor: Color = .white
  var backgroundColor: Color = .red
  var action: () -> Void

  var isDisabled: Bool = false

  var body: some View {
    Button(action: self.action) {
      VStack {
        Text(self.buttonTitle)
          .font(.title3)
          .fontWeight(.semibold)
      }
      .frame(width: 280, height: 50)
      .foregroundColor(self.foregroundColor)
      .background(self.backgroundColor)
      .cornerRadius(8)
    }
    .disabled(self.isDisabled)
  }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
      AFButton(buttonTitle: "Learn More", action: {})
        .padding()
    }
}
