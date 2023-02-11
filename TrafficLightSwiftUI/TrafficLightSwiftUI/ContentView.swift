//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Евгений Забродский on 11.02.23.
//

import SwiftUI

struct ContentView: View {
    
    enum Opacity {
        case red
        case redAndYellow
        case green
        case yellow
    }
    @State var currentOpacity: Opacity = .red
    
    @State private var redOpacity: Double = 0.1
    @State private var yellowOpacity: Double = 0.1
    @State private var greenOpacity: Double = 0.1
    
    
    var body: some View {
        VStack {
            ColorCicle(color: .red, opacity: redOpacity)
                .padding()
            ColorCicle(color: .yellow, opacity: yellowOpacity)
                .padding()
            ColorCicle(color: .green, opacity: greenOpacity)
                .padding()
            Spacer()
            HStack {
                Button("Push") {
                    switch currentOpacity {
                    case .red:
                        currentOpacity = .redAndYellow
                        redOpacity = 1.0
                        yellowOpacity = 0.1
                        greenOpacity = 0.1
                    case .redAndYellow:
                        currentOpacity = .green
                        redOpacity = 1.0
                        yellowOpacity = 1.0
                        greenOpacity = 0.1
                    case .green:
                        currentOpacity = .yellow
                        redOpacity = 0.1
                        yellowOpacity = 0.1
                        greenOpacity = 1.0
                    case .yellow:
                        currentOpacity = .red
                        redOpacity = 0.1
                        yellowOpacity = 1.0
                        greenOpacity = 0.1
                    }
                }.font(.title)
                    .padding(.all, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
