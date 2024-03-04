//
//  ColorView.swift
//  Colorized
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ColorView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 150)
            .foregroundStyle(
                Color(
                    red: redValue / 255,
                    green: greenValue / 255,
                    blue: blueValue / 255
                )
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 4)
            )
            .padding()
    }
}

#Preview {
    ColorView(redValue: 122, greenValue: 11, blueValue: 235)
}
