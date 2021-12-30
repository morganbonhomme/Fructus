//
//  StartButtonView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct StartButtonView: View {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  var body: some View {
    Button {
      isOnboarding = false
    } label: {
      HStack(spacing: 8) {
        Text("Start")

        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(.horizontal, 10)
      .padding(.vertical, 4)
      .background(
        Capsule().stroke(lineWidth: 1.25))
    }
    .accentColor(.white)
  }
}

struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    StartButtonView()
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
