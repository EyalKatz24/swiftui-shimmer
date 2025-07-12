//
//  RotationEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

private struct RotationEnvironmentKey: EnvironmentKey {
    static let defaultValue: ShimmerConfiguration.Rotation = .default
}

public extension EnvironmentValues {
    var shimmerRotation: ShimmerConfiguration.Rotation {
        get { self[RotationEnvironmentKey.self] }
        set { self[RotationEnvironmentKey.self] = newValue }
    }
}
