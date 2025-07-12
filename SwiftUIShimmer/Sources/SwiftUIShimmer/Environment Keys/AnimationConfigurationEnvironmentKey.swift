//
//  AnimationConfigurationEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

private struct AnimationConfigurationEnvironmentKey: EnvironmentKey {
    static let defaultValue: ShimmerConfiguration.AnimationConfiguration = .init()
}

public extension EnvironmentValues {
    var shimmerAnimation: ShimmerConfiguration.AnimationConfiguration {
        get { self[AnimationConfigurationEnvironmentKey.self] }
        set { self[AnimationConfigurationEnvironmentKey.self] = newValue }
    }
}
