//
//  LinkView.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

struct LinkView: View {
  var body: some View {
    GroupBox {
      HStack {
        Text("ContentSource")
        Spacer()
        Link("Wikipedia", destination: URL(string: "https://www.wikipedia.org")!)
        Image(systemName: "arrow.up.right.square")
      }.font(.footnote)
    }
  }
}

struct LinkView_Previews: PreviewProvider {
  static var previews: some View {
    LinkView().previewLayout(.sizeThatFits).padding()
  }
}
