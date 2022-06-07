//
//  ContentView.swift
//  TrafficSwiftUI
//
//  Created by Денис on 07.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonName = "Начать"
    @State private var lightSwitch = "red"
    private func nextColor() {
        switch lightSwitch {
        case "red": lightSwitch = "orange"
        case "orange": lightSwitch = "green"
        case "green": lightSwitch = "red"
        default:
            lightSwitch = "red"
        }
        buttonName = "Далее"
    }
    
    var body: some View {
        VStack {
            ColorCircleView(color: .red, opacity: lightSwitch == "red" ? 1 : 0.3)
            ColorCircleView(color: .orange, opacity: lightSwitch == "orange" ? 1 : 0.3)
            ColorCircleView(color: .green, opacity: lightSwitch == "green" ? 1 : 0.3)
            Spacer()
            Button(action: {nextColor()}) {
                Text(buttonName)
                    .font(.title)
            }

        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
