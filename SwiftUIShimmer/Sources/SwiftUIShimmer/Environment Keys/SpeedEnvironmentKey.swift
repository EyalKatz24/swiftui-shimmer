//
//  SpeedEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

private struct SpeedEnvironmentKey: EnvironmentKey {
    static let defaultValue: Double = 1.0
}

public extension EnvironmentValues {
    var shimmerSpeed: Double {
        get { self[SpeedEnvironmentKey.self] }
        set { self[SpeedEnvironmentKey.self] = newValue }
    }
}
