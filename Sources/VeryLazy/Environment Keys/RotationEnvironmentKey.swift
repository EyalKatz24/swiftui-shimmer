//
//  RotationEnvironmentKey.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

/// Environment key for configuring shimmer rotation effects throughout the view hierarchy.
///
/// This environment key allows you to customize the rotation angle and direction of shimmer
/// animations. The rotation affects the visual direction of the shimmer effect, creating
/// different visual styles and moods for your loading states.
///
/// ## Usage
/// ```swift
/// .environment(\.shimmerRotation, .leanForward)
/// ```
///
/// ## Available Options
/// - `.default`: No rotation (0°)
/// - `.leanForward`: Forward rotation (20°)
/// - `.leanBackward`: Backward rotation (-20°)
/// - `.custom(degrees: Double)`: Custom rotation angle
internal struct RotationEnvironmentKey: EnvironmentKey {
    /// The default rotation configuration for shimmer effects.
    ///
    /// Uses `.default` which applies no rotation to the shimmer animation,
    /// resulting in a horizontal shimmer effect.
    static let defaultValue: ShimmerConfiguration.Rotation = .default
}

public extension EnvironmentValues {
    /// The shimmer rotation configuration for the current environment.
    ///
    /// This property provides access to the rotation configuration that will be applied
    /// to all shimmer effects in the current view hierarchy. You can set this value to
    /// customize the visual direction and style of shimmer animations.
    ///
    /// ## Example
    /// ```swift
    /// VStack {
    ///     Shimmer(shape: .capsule)
    ///     Shimmer(shape: .rect(cornerRadius: 10))
    /// }
    /// .environment(\.shimmerRotation, .leanForward)
    /// ```
    ///
    /// ## Visual Effects
    /// Different rotation values create distinct visual effects:
    /// - `.default`: Creates a standard horizontal shimmer effect
    /// - `.leanForward`: Adds a dynamic forward-leaning effect
    /// - `.leanBackward`: Creates a subtle backward-leaning effect
    /// - `.custom`: Allows for precise control over the shimmer angle
    ///
    /// ## Inheritance
    /// The rotation configuration is inherited by all child views and can be overridden
    /// at any level in the view hierarchy, allowing for different rotation styles
    /// in different parts of your app.
    var shimmerRotation: ShimmerConfiguration.Rotation {
        get { self[RotationEnvironmentKey.self] }
        set { self[RotationEnvironmentKey.self] = newValue }
    }
}
