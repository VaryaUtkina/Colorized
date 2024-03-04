//
//  ColorSliderView.swift
//  Colorized
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ColorSliderView: View {
    @State private var sliderValue = Double.random(in: 0...255)
    
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
    ColorSliderView(color: .red)
}
