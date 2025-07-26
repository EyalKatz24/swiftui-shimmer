// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VeryLazy",
    platforms: [.macOS(.v10_15), .iOS(.v15), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        .library(
            name: "VeryLazy",
            targets: ["VeryLazy"])
    ],
    targets: [
        .target(
            name: "VeryLazy",
            resources: [
                .process("Resources/Colors.xcassets")
            ]
        ),
        
        .testTarget(
            name: "SwiftUIShimmerTests",
            dependencies: ["VeryLazy"]
        )
    ]
)
