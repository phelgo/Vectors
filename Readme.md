# Vectors

`Vector2D`, `Vector3D` and `Vector4D` structs and functions for Swift.

Shortcuts

```swift
let direction = Vector3D.left
// Vector3D(-1.0, 0.0, 0.0)
```

Magnitude

```swift
let distance = Vector3D(1, 4, 8).magnitude
// 9
```

Normalization

```swift
let unit = Vector3D(5, 11, -7).normalized
// Vector3D(0.358, 0.788, -0.501)
let length = unit.magnitude
// 1
```

Addition

```swift
let sum = Vector3D(1, 3, 5) + Vector3D(2, 4, 8)
// Vector3D(3.0, 7.0, 13.0)
```

Subtraction

```swift
let difference = Vector3D(10, 10, 10) - Vector3D(1, 3, 9)
// Vector3D(9.0, 7.0, 1.0)
```

Multiplication

```swift
let gravity = Vector3D.down * 9.8
// Vector3D(0.0, -9.8, 0.0)
```

Dot Product

```swift
let dotProduct = Vector3D(1, 2, 3) -* Vector3D(7, 8, 9)
// 50
```

Cross Product

```swift
let crossProduct = Vector3D(1, 1, 1) +* Vector3D(-1, 1, 1)
// Vector3D(0.0, -2.0, 2.0)
```

Convertible to `CGVector`, `SCNVector3`, or `SCNVector4`

```swift
let moveUI = SKAction.moveBy(~Vector2D.up, duration: 1)
let movePlayer = SCNAction.moveBy(~Vector3D.forward, duration: 1)
```

### Installation
Add Vectors to your [CocoaPods](http://cocoapods.org) podfile:

```
pod 'Vectors'
```

### License
Copyright © 2015 [phelgo](https://twitter.com/phelgo). [MIT licensed.](http://www.opensource.org/licenses/MIT)
