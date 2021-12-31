//
//  FruitRowView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct FruitRowView: View {
  var fruit: Fruit
  var body: some View {
    HStack {
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: .black.opacity(0.2), radius: 8, x: 6, y: 6)
        .frame(width: 80, height: 80, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(10)
      VStack(alignment: .leading, spacing: 5) {
        Text(fruit.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(fruit.headline)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
    }
  }
}

struct FruitRowView_Previews: PreviewProvider {
  static var previews: some View {
    FruitRowView(fruit: fruitsData[2])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
