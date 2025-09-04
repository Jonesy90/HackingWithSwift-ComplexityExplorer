//
//  ContentView.swift
//  ComplexityExplorer
//
//  Created by Michael Jones on 04/09/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItems = Set<GrowthRate>()
    
    var body: some View {
        NavigationSplitView {
            List(GrowthRate.all, id: \.self, selection: $selectedItems) { item in
                Text(item.id)
            }
        } detail: {
            ChartView(selectedItems: selectedItems)
        }
        .onAppear {
            selectedItems = [GrowthRate.all[0]]
        }
    }
}

#Preview {
    ContentView()
}
