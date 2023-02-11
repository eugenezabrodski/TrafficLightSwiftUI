//
//  Circle.swift
//  TrafficLightSwiftUI
//
//  Created by Евгений Забродский on 11.02.23.
//

import SwiftUI

struct ColorCicle: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(color: .black, radius: 10)
            .frame(width: 150, height: 150)
            .opacity(opacity)
    }
}

struct ColorCicle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCicle(color: .red, opacity: 1.0)
    }
}
