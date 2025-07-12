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

    let shape: S
    
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
                        .linear(duration: 1.5 * shimmerAnimation.speed.value)
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
        
        Shimmer(shape: .rect(cornerRadius: 10))
            .frame(width: 150, height: 50)
    }
}
