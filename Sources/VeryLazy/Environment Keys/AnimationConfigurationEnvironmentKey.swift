//
//  AnimationConfigurationEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

/// Environment key for configuring shimmer animation timing and behavior throughout the view hierarchy.
///
/// This environment key allows you to customize the speed and delay of shimmer animations.
/// The animation configuration affects how quickly and when shimmer effects animate,
/// providing control over the user experience and performance characteristics.
///
/// ## Usage
/// ```swift
/// .environment(\.shimmerAnimation, .init(speed: .fast, delay: 0.75))
/// ```
///
/// ## Available Speed Options
/// - `.default`: Standard speed (1.0x multiplier)
/// - `.fast`: Fast speed (2.0x multiplier)
/// - `.slow`: Slow speed (0.625x multiplier)
/// - `.custom(value: Double)`: Custom speed multiplier
internal struct AnimationConfigurationEnvironmentKey: EnvironmentKey {
    /// The default animation configuration for shimmer effects.
    ///
    /// Uses the default `ShimmerConfiguration.AnimationConfiguration` initializer
    /// which provides standard speed and no delay for immediate animation start.
    static let defaultValue: ShimmerConfiguration.AnimationConfiguration = .init()
}

public extension EnvironmentValues {
    /// The shimmer animation configuration for the current environment.
    ///
    /// This property provides access to the animation configuration that will be applied
    /// to all shimmer effects in the current view hierarchy. You can set this value to
    /// customize the timing and behavior of shimmer animations.
    ///
    /// ## Example
    /// ```swift
    /// VStack {
    ///     Shimmer(shape: .rect(cornerRadius: 6))
    ///     Shimmer(shape: .rect(cornerRadius: 6))
    /// }
    /// .environment(\.shimmerAnimation, .init(speed: .fast, delay: 0.75))
    /// ```
    ///
    /// ## Performance Considerations
    /// - **Speed**: Higher speed values create more dynamic effects but may impact performance
    /// - **Delay**: Useful for creating staggered animation sequences
    /// - **Accessibility**: The library automatically respects `UIAccessibility.isReduceMotionEnabled`
    ///
    /// ## Use Cases
    /// - **Fast animations**: Use `.fast` for energetic, attention-grabbing loading states
    /// - **Slow animations**: Use `.slow` for subtle, calming loading experiences
    /// - **Staggered effects**: Use delays to create wave-like animation sequences
    /// - **Custom timing**: Use `.custom` for precise control over animation speed
    ///
    /// ## Inheritance
    /// The animation configuration is inherited by all child views and can be overridden
    /// at any level in the view hierarchy, allowing for different animation styles
    /// in different parts of your app.
    var shimmerAnimation: ShimmerConfiguration.AnimationConfiguration {
        get { self[AnimationConfigurationEnvironmentKey.self] }
        set { self[AnimationConfigurationEnvironmentKey.self] = newValue }
    }
}
