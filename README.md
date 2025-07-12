# swiftui-shimmer

[![Swift](https://img.shields.io/badge/Swift-5.9+-orange.svg)](https://swift.org)
[![SPM](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg)](https://swift.org/package-manager)
[![Platforms](https://img.shields.io/badge/Platforms-iOS%20|%20macOS%20|%20tvOS%20|%20watchOS-blue?logo=apple)](https://developer.apple.com)
[![License](https://img.shields.io/badge/License-MIT-purple.svg)](LICENSE)

SwiftUI Shimmer is a Swift Package Manager (SPM) library that provides a customizable shimmer effect for SwiftUI views. This library allows developers to easily add shimmer animations to their UI components, enhancing the user experience with visually appealing loading indicators.

## Features
- Customizable shimmer colors
- Adjustable animation speed and delay
- Configurable rotation effects
- Easy integration with SwiftUI Environment Keys

## Usage
Import the library and use the `Shimmer` view to apply shimmer effects to your SwiftUI shapes:

```swift
import SwiftUIShimmer

Shimmer(shape: Circle())
    .frame(width: 100, height: 100)
```

## Environment Dependencies
SwiftUI Shimmer provides environment keys that allow you to override shimmer configurations at the app level or component level. These keys enable fine-grained control over shimmer effects.

### Usage
You can override the shimmer configurations using the following environment keys:

```swift
.environment(\.shimmerColors, .init(shapeColor: .yourShapeColor, shimmerColor: .yourShimmerColor))
.environment(\.shimmerRotation, .leanForward) // Or any other rotation
.environment(\.shimmerAnimation, .init(speed: .fast, delay: 0.75)) // Or and other speed and delay
```

### Description
- **`shimmerColors`**: Allows you to customize the colors used in the shimmer effect. You can specify the shape color and shimmer color.
- **`shimmerRotation`**: Configures the rotation effect applied to the shimmer animation.
- **`shimmerAnimation`**: Enables customization of the animation speed and delay for the shimmer effect.

## License
This project is licensed under the MIT License.
