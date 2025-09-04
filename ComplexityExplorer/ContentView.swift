//
//  ContentView.swift
//  ComplexityExplorer
//
//  Created by Michael Jones on 04/09/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItems = Set<GrowthRate>()
    @State private var inputSize = 4.0
    
    var body: some View {
        NavigationSplitView {
            List(GrowthRate.all, id: \.self, selection: $selectedItems) { item in
                Text(item.id)
            }
        } detail: {
            VStack {
                ChartView(selectedItems: selectedItems, inputSize: inputSize)
                ControlsView(inputSize: $inputSize)
            }
        }
        .onAppear {
            selectedItems = [GrowthRate.all[0]]
        }
    }
}

#Preview {
    ContentView()
}
