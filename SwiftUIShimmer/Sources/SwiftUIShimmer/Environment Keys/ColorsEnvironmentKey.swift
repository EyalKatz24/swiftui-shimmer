//
//  ColorsEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

private struct ColorsEnvironmentKey: EnvironmentKey {
    static let defaultValue: ShimmerConfiguration.Colors = ShimmerConfiguration.Colors()
}

public extension EnvironmentValues {
    var shimmerColors: ShimmerConfiguration.Colors {
        get { self[ColorsEnvironmentKey.self] }
        set { self[ColorsEnvironmentKey.self] = newValue }
    }
}
