//
//  ColorsEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

/// Environment key for configuring shimmer colors throughout the view hierarchy.
///
/// This environment key allows you to customize the base shape color and shimmer highlight color
/// for all shimmer effects in a view hierarchy. The configuration is inherited by all child views
/// and can be overridden at any level.
///
/// ## Usage
/// ```swift
/// .environment(\.shimmerColors, .init(
///     shapeColor: .gray.opacity(0.3),
///     shimmerColor: .white.opacity(0.8)
/// ))
/// ```
///
/// ## Default Values
/// - `shapeColor`: System gray color
/// - `shimmerColor`: White color
internal struct ColorsEnvironmentKey: EnvironmentKey {
    /// The default color configuration for shimmer effects.
    ///
    /// Uses the default `ShimmerConfiguration.Colors` initializer which provides
    /// system-appropriate colors for the current appearance mode.
    static let defaultValue: ShimmerConfiguration.Colors = ShimmerConfiguration.Colors()
}

public extension EnvironmentValues {
    /// The shimmer colors configuration for the current environment.
    ///
    /// This property provides access to the shimmer color configuration that will be used
    /// by all shimmer effects in the current view hierarchy. You can set this value to
    /// customize the appearance of shimmer effects throughout your app or specific views.
    ///
    /// ## Example
    /// ```swift
    /// VStack {
    ///     Shimmer(shape: .circle)
    ///     Shimmer(shape: .rect(cornerRadius: 10))
    /// }
    /// .environment(\.shimmerColors, .init(
    ///     shapeColor: .blue.opacity(0.2),
    ///     shimmerColor: .blue
    /// ))
    /// ```
    ///
    /// ## Inheritance
    /// The color configuration is inherited by all child views and can be overridden
    /// at any level in the view hierarchy, allowing for fine-grained control over
    /// shimmer appearance in different parts of your app.
    var shimmerColors: ShimmerConfiguration.Colors {
        get { self[ColorsEnvironmentKey.self] }
        set { self[ColorsEnvironmentKey.self] = newValue }
    }
}
