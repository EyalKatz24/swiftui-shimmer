// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "VeryLazy",
    platforms: [.macOS(.v10_15), .iOS(.v15), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        .library(
            name: "VeryLazy",
            targets: ["VeryLazy"])
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-syntax.git", "509.0.0"..<"601.0.0-prerelease")
    ],
    targets: [
        .target(
            name: "VeryLazy",
            resources: [
                .process("Resources/Colors.xcassets")
            ]
        ),
        
        .testTarget(
            name: "ShimmeringMacroTests",
            dependencies: [
                "ShimmeringMacro",
                .product(name: "SwiftSyntaxMacrosTestSupport", package: "swift-syntax"),
            ]
        )
    ]
)
