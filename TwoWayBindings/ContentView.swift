//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by VINCENT CINA on 2/22/25.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount = 0
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate: Date = Date()
    @State private var stepperValue = 1
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Press count: \(pressCount)")

            Button("Press Me") {
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            TextField("Enter a name:", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Neme entered: \(name)")
            Spacer()
            
            Toggle("Toggle is \(toggleIsOn ? "on" : "off"):", isOn: $toggleIsOn)
            Spacer()
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            ColorPicker("Pick a color:", selection: $selectedColor)
            Spacer()
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            Spacer()
            Stepper("Stepper value: \(stepperValue)", value: $stepperValue, in: 1...10)
            Spacer()
        }
        .font(.title2)
        .padding()
        Spacer()
    }
}

#Preview {
    ContentView()
}
