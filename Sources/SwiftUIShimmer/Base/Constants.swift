//
//  Constants.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public enum Constants {
    
    public enum DefaultColors {
        public static var shapeColor: Color = Color(ColorResource(name: "shapeBaseColor", bundle: .module))
        public static let shimmerColor: Color = .init(ColorResource(name: "shimmerColor", bundle: .module))
    }
}
