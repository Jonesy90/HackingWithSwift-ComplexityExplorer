//
//  DataPoint.swift
//  ComplexityExplorer
//
//  Created by Michael Jones on 04/09/2025.
//

import Foundation

struct DataPoint: Identifiable {
    let id = UUID()
    var x: Int
    var y: Double
    let rate: String
}
