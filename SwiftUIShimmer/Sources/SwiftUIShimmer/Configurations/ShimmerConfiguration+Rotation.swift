//
//  ShimmerConfiguration+Rotation.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {
    
    enum Rotation {
        case `default`
        case leanForward
        case leanBackward
        case custom(degrees: Double)
        
        public var degrees: Double {
            switch self {
            case .default: .zero
            case .leanForward: 20
            case .leanBackward: -20
            case let .custom(degrees): degrees
            }
        }
    }
}
