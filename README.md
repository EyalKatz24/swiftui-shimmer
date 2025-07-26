# SwiftUI Very Lazy 🤪

[![Swift](https://img.shields.io/badge/Swift-5.9+-orange?logo=swift)](https://swift.org)
[![SPM](https://img.shields.io/badge/SPM-Compatible-brightgreen?logo=hackthebox)](https://swift.org/package-manager)
[![Platforms](https://img.shields.io/badge/Platforms-iOS%20|%20macOS%20|%20tvOS%20|%20watchOS-blue?logo=apple)](https://developer.apple.com)
[![License](https://img.shields.io/badge/License-MIT-purple?logo=bitwarden)](LICENSE)

Very Lazy is a Swift Package Manager (SPM) library that provides a customizable shimmer effect for SwiftUI views. This library allows developers to easily add shimmer animations to their UI components, enhancing the user experience with visually appealing loading indicators.

## Features
- Customizable shimmer colors
- Adjustable animation speed and delay
- Configurable rotation effects
- Easy integration with SwiftUI Environment Keys

## Quick Start 🚀

Import the library and start creating beautiful shimmer effects:

```swift
import SwiftUIShimmer

...
Shimmer(shape: .circle)
    .frame(width: 80, height: 80)
...
```

## Examples & API Reference

### Basic Shimmer Shapes
Create shimmer effects on various shapes with simple, clean animations.

https://github.com/user-attachments/assets/1acdc0a6-48b1-40bf-901e-131c22e1b4df

```swift
HStack(spacing: 24) {
    Shimmer(shape: .circle)
        .frame(width: 80, height: 80)
    
    Shimmer(shape: .rect(cornerRadius: 10))
        .frame(width: 250, height: 40)
}
```

### Layered Shimmer Components
Use `LayeredShimmer` to create complex shimmer layouts with background shapes and nested content. This component provides a structured approach to building sophisticated loading states.

https://github.com/user-attachments/assets/6042783b-3846-4498-846e-588f06077118

```swift
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
```

### Rotation Effects
Control the direction and style of the shimmer animation using the `shimmerRotation` environment key.

**Available rotation options:**
• `.default`: No rotation applied (0°)
• `.leanForward`: Forward rotation by 20 degrees
• `.leanBackward`: Backward rotation by -20 degrees
• `.custom(degrees: Double)`: Custom rotation angle in degrees

https://github.com/user-attachments/assets/c4ed16bf-45f5-439b-aa94-9586ade2b5f6

Forward rotation example:
```swift
Shimmer(shape: .capsule)
    .environment(\.shimmerRotation, .leanForward)
```

### Animation Speed Control
Fine-tune animation timing and behavior using the `shimmerAnimation` environment key.

**Available speed options:**
• `.default`: Standard animation speed (1.0x multiplier)
• `.fast`: Fast animation speed (2.0x multiplier)
• `.slow`: Slow animation speed (0.625x multiplier)
• `.custom(value: Double)`: Custom speed multiplier

The delay parameter controls the initial pause before animation begins.

https://github.com/user-attachments/assets/8853bc6b-d1dc-4a05-8087-f17f73f6828b

Fast animation with delay example:
```swift
VStack(alignment: .leading, spacing: 8) {
    Shimmer(shape: .rect(cornerRadius: 6))
        .frame(width: 180, height: 20)
    
    Shimmer(shape: .rect(cornerRadius: 6))
        .frame(width: 200, height: 20)
    
    Shimmer(shape: .rect(cornerRadius: 4))
        .frame(width: 120, height: 16)
}
.environment(\.shimmerAnimation, .init(speed: .fast, delay: 0.75))
```

### Custom Colors
Personalize your shimmer effects with custom colors using the `shimmerColors` environment key.

**Color configuration options:**
• `shapeColor`: Base color of the shape (defaults to system gray)
• `shimmerColor`: Highlight color for the shimmer effect (defaults to white)
• `.innerShape`: Predefined configuration for nested shapes with lighter colors

https://github.com/user-attachments/assets/4094653d-c6a7-4a9e-a740-fc404800776d

Custom blue theme example:
```swift
Shimmer(shape: .rect(cornerRadius: 12))
    .frame(width: 300, height: 100)
    .environment(\.shimmerColors, .init(shapeColor: .blue, shimmerColor: .cyan))
```


## License
This project is licensed under the MIT License.
