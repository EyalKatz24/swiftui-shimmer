//
//  ShimmerConfiguration+AnimationConfiguration.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {
    
    struct AnimationConfiguration {
        public let speed: Speed
        public let delay: TimeInterval
        
        public init(speed: Speed = .default, delay: TimeInterval = .zero) {
            self.speed = speed
            self.delay = delay
        }
    }
}

public extension ShimmerConfiguration.AnimationConfiguration {
    
    enum Speed {
        case `default`
        case fast
        case slow
        case custom(value: Double)
        
        public var value: Double {
            switch self {
            case .default: 1.0
            case .fast: 0.5
            case .slow: 1.6
            case let .custom(value): value
            }
        }
    }
}
