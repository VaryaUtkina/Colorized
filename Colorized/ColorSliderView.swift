//
//  ColorSliderView.swift
//  Colorized
//
//  Created by Варвара Уткина on 08.03.2024.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    let color: Color
    
    @State private var text = ""
    @State private var showAlert = false
    
    var body: some View {
        HStack {
            Text(value.formatted())
                .foregroundStyle(.white)
                .frame(width: 40, alignment: .leading)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { _, newValue in
                    text = newValue.formatted()
                }
            
            TextFieldView(text: $text, action: checkValue)
                .alert("Wrong Format", isPresented: $showAlert, actions: {}) {
                    Text("Please enter value from 0 to 255")
                }
        }
        .onAppear {
            text = value.formatted()
        }
    }
    private func checkValue() {
        if let value = Double(text), (0...255).contains(value) {
            self.value = value
        } else {
            showAlert.toggle()
            value = 0
            text = "0"
        }
    }
}

#Preview {
    ZStack {
        Color.costomBlue
        ColorSliderView(value: .constant(100), color: .red)
    }
}
