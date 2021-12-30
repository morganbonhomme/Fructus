//
//  FructusApp.swift
//  Fructus
//
//  Created by Morgan Bonhomme on 30/12/2021.
//

import SwiftUI

@main
struct FructusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if (isOnboarding) {
        OnboardingView()
      } else {
        ContentView()
      }
      
    }
  }
}
