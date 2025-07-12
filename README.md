# swiftui-shimmer

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

## License
This project is licensed under the MIT License.
