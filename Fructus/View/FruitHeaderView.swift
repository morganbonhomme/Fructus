//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct FruitHeaderView: View {
  @State private var isAnimating: Bool = false
  var fruit: Fruit
  var body: some View {
    ZStack {
      LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 6)
        .scaleEffect(isAnimating ? 1 : 0.6)
    }.frame(height: 440)
      .onAppear(perform: {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        }
      })
  }
}

struct FruitHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    FruitHeaderView(fruit: fruitsData[0])
  }
}
