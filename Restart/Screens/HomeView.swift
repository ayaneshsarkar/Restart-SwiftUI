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
  @State private var isAnimating: Bool = false
  
  // Body
  var body: some View {
    VStack {
      // Header
      Spacer()
      
      ZStack {
        CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
        
        Image("character-2")
          .resizable()
          .scaledToFit()
          .padding()
          .offset(y: isAnimating ? 35 : -35)
          .animation(
            .easeInOut(duration: 4).repeatForever(),
            value: isAnimating
          )
      }
      
      // Center
      Text("The time that leads to mastery is dependent on the intensity of our focus.")
        .font(.title3)
        .fontWeight(.light)
        .foregroundStyle(.secondary)
        .multilineTextAlignment(.center)
        .padding()
      
      // Footer
      Spacer()
      
      Button {
        withAnimation {
          playSound(sound: "success", type: "m4a")
          isOnboardingViewActive = true
        }
        isOnboardingViewActive = true
      } label: {
        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
          .imageScale(.large)
        
        Text("Restart")
          .font(.system(.title3, design: .rounded))
          .fontWeight(.bold)
      } // Button
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
      .controlSize(.large)
      .padding()
    } // VStack
    .onAppear {
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
        isAnimating = true
      })
    }
  }
}
