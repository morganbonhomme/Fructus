//
//  OnboardingView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct OnboardingView: View {
  var body: some View {
    TabView {
      ForEach(0 ..< 5) {
        index in
        FruitCardView(fruit: fruitsData[index])
      }
    }
    .tabViewStyle(.page)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
