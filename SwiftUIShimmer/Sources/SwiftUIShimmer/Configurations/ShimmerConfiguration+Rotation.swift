//
//  ShimmerConfiguration+Rotation.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {

    /// Defines the rotation configurations for the shimmer effect.
    enum Rotation {
        
        /// No rotation applied to the shimmer effect.
        case `default`
        
        /// Rotates the shimmer effect forward by 20 degrees.
        case leanForward
        
        /// Rotates the shimmer effect backward by -20 degrees.
        case leanBackward
        
        /// Allows custom rotation by specifying degrees.
        case custom(degrees: Double)
        
        /// The rotation angle in degrees for the shimmer effect.
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
