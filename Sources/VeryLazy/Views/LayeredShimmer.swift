//
//  LayeredShimmer.swift
//  SwiftUIShimmer
//
//  Created by Eyal Katz on 19/07/2025.
//

import SwiftUI

public struct LayeredShimmer<Background, Content>: View where Background: Shape, Content: View {
    
    @Environment(\.innerShimmerColors) private var innerShimmerColors
    
    public let background: Background
    public let content: @MainActor () -> Content

    @inlinable public init(background: Background, @ViewBuilder content: @escaping () -> Content) {
        self.background = background
        self.content = content
    }
    
    public var body: some View {
        Shimmer(shape: background)
            .overlay {
                content()
                    .environment(\.shimmerColors, innerShimmerColors)
            }
    }
}

#Preview {
    LayeredShimmer(background: .rect(cornerRadius: 10)) {
        HStack {
            VStack(alignment: .leading) {
                Shimmer(shape: .rect(cornerRadius: 10))
                    .frame(width: 250, height: 25)
                
                Shimmer(shape: .rect(cornerRadius: 10))
                    .frame(width: 150, height: 15)
                
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
    .frame(width: 350, height: 175)
}
