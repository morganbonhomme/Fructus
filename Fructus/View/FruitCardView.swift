//
//  FruitCardView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct FruitCardView: View {
  @State private var isAnimating: Bool = false
  var fruit: Fruit
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        // MARK: Fruit Image

        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 6)
          .scaleEffect(isAnimating ? 1.0 : 0.6)

        // MARK: Fruit Title

        Text(fruit.title)
          .foregroundColor(.white)
          .font(.largeTitle)
          .fontWeight(.bold)
          .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 6)

        // MARK: Fruit Headline`

        Text(fruit.headline)
          .foregroundColor(.white)
          .padding(.horizontal)
          .multilineTextAlignment(.center)

        // MARK: Button Start

        StartButtonView()
      }
    }
    .onAppear(perform: {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    })
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}

struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView(fruit: fruitsData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
