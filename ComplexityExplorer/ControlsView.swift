//
//  ControlsView.swift
//  ComplexityExplorer
//
//  Created by Michael Jones on 04/09/2025.
//

import SwiftUI

struct ControlsView: View {
    @Binding var inputSize: Double
    
    var body: some View {
        HStack {
            LabeledContent {
                Slider(value: $inputSize, in: 2...32, step: 1)
            } label: {
                Text("Input Size: \(Int(inputSize))")
                    .frame(minWidth: 100)
            }
        }
        .padding([.horizontal, .bottom])
    }
}

#Preview {
    ControlsView(inputSize: .constant(2))
}
