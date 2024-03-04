//
//  ContentView.swift
//  Colorized
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 0.13, green: 0.37, blue: 0.8)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorView(
                    redValue: redValue,
                    greenValue: greenValue,
                    blueValue: blueValue
                )
                
                VStack(spacing: 15) {
                    ColorSliderView(sliderValue: $redValue, color: .red)
                    ColorSliderView(sliderValue: $greenValue, color: .green)
                    ColorSliderView(sliderValue: $blueValue, color: .blue)
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
                .foregroundStyle(.white)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
        }
    }
}

#Preview {
    ContentView()
}

