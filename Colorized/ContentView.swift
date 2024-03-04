//
//  ContentView.swift
//  Colorized
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.13, green: 0.34, blue: 0.69)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                ColorView()
                VStack(spacing: 15) {
                    ColorSliderView(color: .red)
                    ColorSliderView(color: .green)
                    ColorSliderView(color: .blue)
                }
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

