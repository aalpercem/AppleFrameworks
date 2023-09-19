//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Alper Cem Öztürk on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(spacing: 15) {
            Image(systemName: "apple.logo")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to Apple Frameworks!")
          .font(.title2)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
