//
//  InnerColorsEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 19/07/2025.
//

import SwiftUI

/// Environment key for configuring inner shimmer colors in layered shimmer components.
///
/// This environment key provides specialized color configuration for nested shimmer elements
/// within `LayeredShimmer` components. It uses a predefined color scheme with lighter colors
/// that are optimized for inner shapes, creating visual hierarchy and depth in complex layouts.
///
/// ## Usage
/// ```swift
/// LayeredShimmer(background: .rect(cornerRadius: 10)) {
///     Shimmer(shape: .rect(cornerRadius: 6))
/// }
/// .environment(\.innerShimmerColors, .init(
///     shapeColor: .blue.opacity(0.1),
///     shimmerColor: .blue.opacity(0.6)
/// ))
/// ```
///
/// ## Default Values
/// Uses `ShimmerConfiguration.Colors.innerShape` which provides:
/// - `shapeColor`: Very light gray (#EFEFF1) in light mode, medium gray (#545B63) in dark mode
/// - `shimmerColor`: Pure white (#FFFFFF) in light mode, light gray (#6C757E) in dark mode
internal struct InnerColorsEnvironmentKey: EnvironmentKey {
    /// The default inner color configuration for nested shimmer effects.
    ///
    /// Uses `ShimmerConfiguration.Colors.innerShape` which provides a predefined
/// color scheme optimized for inner shapes in layered layouts with appearance-adaptive colors.
    static let defaultValue: ShimmerConfiguration.Colors = ShimmerConfiguration.Colors.innerShape
}

public extension EnvironmentValues {
    /// The inner shimmer colors configuration for the current environment.
    ///
    /// This property provides access to the color configuration that will be used
    /// for nested shimmer elements within `LayeredShimmer` components. The inner
    /// colors are designed to create visual hierarchy and depth in complex layouts.
    ///
    /// ## Example
    /// ```swift
    /// LayeredShimmer(background: .rect(cornerRadius: 10)) {
    ///     VStack(alignment: .leading) {
    ///         Shimmer(shape: .rect(cornerRadius: 6))
    ///             .frame(width: 250, height: 25)
    ///         Shimmer(shape: .rect(cornerRadius: 6))
    ///             .frame(width: 150, height: 15)
    ///     }
    ///     .padding()
    /// }
    /// .environment(\.innerShimmerColors, .init(
    ///     shapeColor: .gray.opacity(0.1),
    ///     shimmerColor: .gray.opacity(0.4)
    /// ))
    /// ```
    ///
    /// ## Design Principles
    /// - **Visual Hierarchy**: Inner colors are typically lighter than background colors
    /// - **Depth Perception**: Creates layered visual effects in complex layouts
    /// - **Consistency**: Maintains design coherence across nested elements
    /// - **Accessibility**: Ensures sufficient contrast for readability
    ///
    /// ## Use Cases
    /// - **Card layouts**: Different colors for card background vs content elements
    /// - **Nested components**: Visual distinction between container and content
    /// - **Complex skeletons**: Multiple layers of loading states with clear hierarchy
    /// - **Brand consistency**: Custom inner colors that match your app's design system
    ///
    /// ## Inheritance
    /// The inner color configuration is inherited by all child views within
    /// `LayeredShimmer` components and can be overridden to create different
    /// visual styles for nested elements.
    var innerShimmerColors: ShimmerConfiguration.Colors {
        get { self[InnerColorsEnvironmentKey.self] }
        set { self[InnerColorsEnvironmentKey.self] = newValue }
    }
}
