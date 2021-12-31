//
//  FruitDetail.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct FruitDetailView: View {
  var fruit: Fruit
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          FruitHeaderView(fruit: fruit)
          VStack(alignment: .leading, spacing: 20) {
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            FruitNutrientView(fruit: fruit)
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            Text(fruit.description)
              .multilineTextAlignment(.leading)
          }.padding()
          LinkView()
            .padding()
        }
        .navigationTitle(Text(fruit.title))
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
      }
      .edgesIgnoringSafeArea(.top)
    }
  }
}

struct FruitDetail_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[1])
  }
}
