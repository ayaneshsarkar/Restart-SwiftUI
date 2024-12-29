//
//  HomeView.swift
//  Restart
//
//  Created by Ayanesh Sarkar on 29/12/24.
//

import SwiftUI

struct HomeView: View {
  //Property
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  // Body
  var body: some View {
    VStack {
      Text("Home")
        .font(.largeTitle)
      
      Button {
        isOnboardingViewActive = true
      } label: {
        Text("Restart")
      }
    } // VStack
  }
}
