//
//  ShimmerConfiguration+AnimationConfiguration.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {
    
    /// Colors configuration for the shimmer effect.
    struct Colors {
        
        /// The color of the shape (fill color).
        public let shapeColor: Color
        
        /// The color of the shimmer (highlight color).
        public let shimmerColor: Color
        
        
        /// Initializes a new `Colors` configuration for the shimmer effect.
        ///
        /// - Parameters:
        ///   - shapeColor: The base color of the shape where the shimmer animates on and clipped to. Defaults to `Constants.DefaultColors.shapeColor`.
        ///   - shimmerColor: The highlight color used for the shimmer effect. Defaults to `Constants.DefaultColors.shimmerColor`.
        public init(shapeColor: Color = Constants.DefaultColors.shapeColor, shimmerColor: Color = Constants.DefaultColors.shimmerColor) {
            self.shapeColor = shapeColor
            self.shimmerColor = shimmerColor
        }
    }
}

internal extension ShimmerConfiguration.Colors {
    
    /// A predefined color configuration for inner shapes.
    ///
    /// This configuration uses slightly lighter colors compared to the default ones.
    /// It is intended for use in nested or inner shapes within a `Shimmer`.
    static let innerShape: Self = .init(shapeColor: .innerShapeBase, shimmerColor: .innerShimmer)
}
