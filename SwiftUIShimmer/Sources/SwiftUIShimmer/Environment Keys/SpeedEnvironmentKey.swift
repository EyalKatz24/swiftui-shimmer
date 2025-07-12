//
//  SpeedEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

private struct SpeedEnvironmentKey: EnvironmentKey {
    static let defaultValue: ShimmerConfiguration.Speed = .default
}

public extension EnvironmentValues {
    var shimmerSpeed: ShimmerConfiguration.Speed {
        get { self[SpeedEnvironmentKey.self] }
        set { self[SpeedEnvironmentKey.self] = newValue }
    }
}
