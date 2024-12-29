//
//  CircleGroupView.swift
//  Restart
//
//  Created by Ayanesh Sarkar on 29/12/24.
//

import SwiftUI

struct CircleGroupView: View {
  // Property
  @State var ShapeColor: Color
  @State var ShapeOpacity: Double
  
  // Body
  var body: some View {
    ZStack {
      Circle()
        .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
        .frame(width: 260, height: 260, alignment: .center)
      Circle()
        .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
        .frame(width: 260, height: 260, alignment: .center)
    } // ZStack
  }
}
