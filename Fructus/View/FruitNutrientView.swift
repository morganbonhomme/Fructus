//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 31/12/2021.
//

import SwiftUI

struct FruitNutrientView: View {
  var fruit: Fruit
  private let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]

  var body: some View {
      GroupBox() {
        DisclosureGroup("Nutritional value per 100g") {
          ForEach(0..<nutrients.count, id: \.self) { item in
            Divider().padding(.vertical, 2)
            
            HStack {
              Group {
                Image(systemName: "info.circle")
                Text(nutrients[item])
              }
              .foregroundColor(fruit.gradientColors[1])
              .font(Font.system(.body).bold())
              
              Spacer(minLength: 25)
              
              Text(fruit.nutrition[item])
                .multilineTextAlignment(.trailing)
            }
          }
        }
      } //: BOX
    }
  }


struct FruitNutrientView_Previews: PreviewProvider {
  static var previews: some View {
    FruitNutrientView(fruit: fruitsData[1])
  }
}
