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
            GrowthRate(id: "Square Root", function: squareRootGrowth),
            GrowthRate(id: "Logarithmic", function: logarithmicGrowth),
            GrowthRate(id: "Linearithmic", function: linearithmicGrowth),
            GrowthRate(id: "Quadrathic", function: quadraticGrowth),
            GrowthRate(id: "Cubic", function: cubicGrowth),
            GrowthRate(id: "Exponential", function: exponentialGrowth),
            GrowthRate(id: "Factorial", function: factorialGrowth)
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
    
    /// O(log n)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func logarithmicGrowth(_ n: Int) -> Double {
        max(0, log2(Double(n)))
    }
    
    /// O(n log n)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func linearithmicGrowth(_ n: Int) -> Double {
        max(0, Double(n) * log2(Double(n)))
    }
    
    /// O(n^2)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func quadraticGrowth(_ n: Int) -> Double {
        pow(Double(n), 2)
    }
    
    /// O(n^3)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func cubicGrowth(_ n: Int) -> Double {
        pow(Double(n), 3)
    }
    
    /// O(2^n)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func exponentialGrowth(_ n: Int) -> Double {
        pow(2, Double(n))
    }
    
    /// O(n!)
    /// - Parameter n: <#n description#>
    /// - Returns: <#description#>
    static func factorialGrowth(_ n: Int) -> Double {
        guard n > 0 else { return 1 }
        return (1...n).map(Double.init).reduce(1, *)
    }
}


