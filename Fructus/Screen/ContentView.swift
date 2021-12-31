//
//  ContentView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(fruitsData) { fruit in
          NavigationLink(destination: FruitDetailView(fruit: fruit)) {
            FruitRowView(fruit: fruit)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle(Text("Fruits"))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
