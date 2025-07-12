//
//  ShimmerConfiguration+Speed.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {
    
    enum Speed {
        case `default`
        case fast
        case slow
        case custom(value: Double)
        
        var value: Double {
            switch self {
            case .default: 1.0
            case .fast: 2.0
            case .slow: 0.5
            case let .custom(value): value
            }
        }
    }
}
