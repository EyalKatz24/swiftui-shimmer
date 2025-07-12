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
        
        public init(shapeColor: Color = Constants.DefaultColors.shapeColor, shimmerColor: Color = Constants.DefaultColors.shimmerColor) {
            self.shapeColor = shapeColor
            self.shimmerColor = shimmerColor
        }
    }
}
