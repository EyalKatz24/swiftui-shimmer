//
//  InnerColorsEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 19/07/2025.
//

import SwiftUI

private struct InnerColorsEnvironmentKey: EnvironmentKey {
    static let defaultValue: ShimmerConfiguration.Colors = ShimmerConfiguration.Colors.innerShape
}

public extension EnvironmentValues {
    var innerShimmerColors: ShimmerConfiguration.Colors {
        get { self[InnerColorsEnvironmentKey.self] }
        set { self[InnerColorsEnvironmentKey.self] = newValue }
    }
}
