// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIShimmer",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        .library(
            name: "SwiftUIShimmer",
            targets: ["SwiftUIShimmer"])
    ],
    targets: [
        .target(
            name: "SwiftUIShimmer",
            resources: [
                .process("Resources/Colors.xcassets")
            ]
        ),
        
        .testTarget(
            name: "SwiftUIShimmerTests",
            dependencies: ["SwiftUIShimmer"]
        )
    ]
)
