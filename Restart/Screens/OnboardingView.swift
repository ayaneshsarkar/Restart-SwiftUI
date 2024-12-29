//
//  OnboardingView.swift
//  Restart
//
//  Created by Ayanesh Sarkar on 29/12/24.
//

import SwiftUI

struct OnboardingView: View {
  // Property
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
  
  // Body
  var body: some View {
    ZStack {
      Color("ColorBlue")
        .ignoresSafeArea(.all, edges: .all)
      
      VStack(spacing: 20) {
        // Header
        Spacer()
        
        VStack(spacing: 0) {
          Text("Share.")
            .font(.system(size: 60))
            .fontWeight(.heavy)
            .foregroundStyle(.white)
          
          Text(
            """
            It's not how much we give but
            how much love we put into giving.
            """
          )
          .font(.title3)
          .fontWeight(.light)
          .foregroundStyle(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 20)
        } // Header
        
        // Center
        ZStack {
          ZStack {
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
            
            Image("character-1")
              .resizable()
              .scaledToFit()
          }
        } // Center
        
        Spacer()
        
        // Footer
        ZStack {
          // Button parts
          // 1. Background
          Capsule()
            .fill(.white.opacity(0.2))
          
          Capsule()
            .fill(.white.opacity(0.2))
            .padding(8)
          
          // 2. Call to action
          Text("Get Started")
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .offset(x: 20)
          // 3. Capsule
          HStack {
            Capsule()
              .fill(Color("ColorRed"))
              .frame(width: 80)
              
            Spacer()
          }
          // 4. Circle
          HStack {
            ZStack {
              Circle()
                .fill(Color("ColorRed"))
              Circle()
                .fill(.black.opacity(0.15))
                .padding(8)
              Image(systemName: "chevron.right.2")
                .font(.system(size: 24, weight: .bold))
            }
            .foregroundStyle(.white)
            .frame(width: 80, height: 80, alignment: .center)
            
            Spacer()
          } // HStack
          .onTapGesture {
            isOnboardingViewActive = false
          }
        } // Footer
        .frame(height: 80, alignment: .center)
        .padding()
      } // VStack
    } // ZStack
  }
}
