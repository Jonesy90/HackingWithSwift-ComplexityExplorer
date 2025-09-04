//
//  GrowthRate.swift
//  ComplexityExplorer
//
//  Created by Michael Jones on 04/09/2025.
//

import Foundation

/// <#Description#>
struct GrowthRate: Hashable, Identifiable {
    var id: String
    var function: (Int) -> Double
    
    static var all: [GrowthRate] {
        [
            GrowthRate(id: "Linear", function: linearGrowth),
            GrowthRate(id: "Constant", function: constantGrowth),
            GrowthRate(id: "Square Root", function: squareRootGrowth)
        ]
    }
    
    static func == (lhs: GrowthRate, rhs: GrowthRate) -> Bool {
        lhs.id == rhs.id
    }
    
    /// <#Description#>
    /// - Parameter hasher: <#hasher description#>
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    /// 0(n)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func linearGrowth(_ n: Int) -> Double {
        Double(n)
    }
    
    /// O(1)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func constantGrowth(_ n: Int) -> Double {
        1
    }
    
    /// O(sqrt(n))con
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func squareRootGrowth(_ n: Int) -> Double {
        sqrt(Double(n))
    }
}


