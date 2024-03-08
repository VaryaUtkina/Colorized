//
//  ColorView.swift
//  Colorized
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 130)
            .foregroundStyle(
                Color(
                    red: red / 255,
                    green: green / 255,
                    blue: blue / 255
                )
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 4)
            )
    }
}

struct ColorView_previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.costomBlue
            ColorView(red: 100, green: 100, blue: 100)
        }
    }
}
