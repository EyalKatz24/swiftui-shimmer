//
//  Shimmer.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

public struct Shimmer<S: Shape>: View {
    
    @State private var animating = false
    @Environment(\.shimmerColors) private var shimmerColors: ShimmerConfiguration.Colors
    @Environment(\.shimmerRotation) private var rotation: ShimmerConfiguration.Rotation
    @Environment(\.shimmerAnimation) private var shimmerAnimation: ShimmerConfiguration.AnimationConfiguration

    public let shape: S
    
    private var animationSpeed: Double {
        let value = shimmerAnimation.speed.value
        switch value {
        case .zero: return 1.0
        default: return abs(value)
        }
    }
    
    private var animationDuration: TimeInterval {
        guard !UIAccessibility.isReduceMotionEnabled else { return 10.0 }
        return 1.5 / animationSpeed
    }
    
    public init(shape: S) {
        self.shape = shape
    }
    
    public var body: some View {
        GeometryReader { geometry in
            shape
                .foregroundColor(shimmerColors.shapeColor)
                .overlay(
                    LinearGradient(
                        colors: [
                            .clear,
                            shimmerColors.shimmerColor,
                            .clear
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 5)
                    .offset(x: geometry.size.width * (animating ? 1.4 : -1.4))
                    .rotationEffect(.degrees(rotation.degrees))
                    .animation(
                        .linear(duration: animationDuration)
                        .delay(shimmerAnimation.delay)
                        .repeatForever(autoreverses: false),
                        value: animating
                    )
                )
                .clipShape(shape)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        animating = true
                    }
                }
        }
    }
}

#Preview {
    VStack(spacing: 30) {
        Shimmer(shape: .circle)
            .frame(width: 100, height: 100)
        
        Shimmer(shape: .ellipse)
            .frame(width: 150, height: 75)
        
        Shimmer(shape: .capsule)
            .frame(width: 150, height: 30)
            .environment(\.shimmerRotation, .leanForward)
        
        Shimmer(shape: .rect(cornerRadius: 10))
            .frame(width: 150, height: 50)
            .environment(\.shimmerAnimation, .init(speed: .fast))
    }
}
