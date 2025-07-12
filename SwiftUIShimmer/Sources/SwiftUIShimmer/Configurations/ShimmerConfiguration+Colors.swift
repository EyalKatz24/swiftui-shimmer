//
//  ShimmerConfiguration+Colors.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public extension ShimmerConfiguration {
    
    struct Colors {
        let shapeColor: Color
        let shimmerColor: Color
        
        public init(shapeColor: Color = Constants.DefaultColors.shapeColor, shimmerColor: Color = Constants.DefaultColors.shimmerColor) {
            self.shapeColor = shapeColor
            self.shimmerColor = shimmerColor
        }
    }
}
