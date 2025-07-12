//
//  Shimmer.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 12/07/2025.
//

import SwiftUI

struct Shimmer<S: Shape>: View {
    @State private var animating = false
    var shape: S
    var foregroundColor: Color = .primary.opacity(0.2)
    var shimmerColor: Color = .white.opacity(0.6)
    
    @Environment(\.shimmerRotation) private var rotation: ShimmerConfiguration.Rotation
    
    var body: some View {
        GeometryReader { geometry in
            shape
                .foregroundColor(foregroundColor)
                .overlay(
                    LinearGradient(
                        colors: [
                            .clear,
                            shimmerColor,
                            .clear
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 5)
                    .offset(x: geometry.size.width * (animating ? 1.4 : -1.4))
                    .rotationEffect(.degrees(rotation.degrees))
                    .animation(
                        .linear(duration: 1.5)
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
