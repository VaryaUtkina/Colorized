//
//  ColorView.swift
//  Colorized
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 150)
            .foregroundStyle(.red)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 4)
            )
            .padding()
    }
}

#Preview {
    ColorView()
}
