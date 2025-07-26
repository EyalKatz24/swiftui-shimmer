//
//  ShimmerConfiguration+AnimationConfiguration.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {

    /// Defines animation options for the shimmer effect.
    struct AnimationConfiguration {
        
        /// Controls the speed of the shimmer animation
        public let speed: Speed
        
        /// Specifies the delay before the animation starts.
        public let delay: TimeInterval
        
        /// Initializes the animation configuration with default or custom values.
        public init(speed: Speed = .default, delay: TimeInterval = .zero) {
            self.speed = speed
            self.delay = delay
        }
    }
}

public extension ShimmerConfiguration.AnimationConfiguration {

    /// Enum defining speed options for the shimmer animation.
    enum Speed {
        
        /// Standard speed.
        case `default`
        
        /// Faster speed.
        case fast
        
        /// Slower speed.
        case slow
        
        /// Custom speed value.
        case custom(value: Double)
        
        /// The speed value for the shimmer animation.
        public var value: Double {
            switch self {
            case .default: 1.0
            case .fast: 2.0
            case .slow: 0.625
            case let .custom(value): value
            }
        }
    }
}
