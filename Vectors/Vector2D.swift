// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import CoreGraphics

public struct Vector2D: CustomDebugStringConvertible, CustomStringConvertible, Equatable, Hashable {
    public let x: Double
    public let y: Double
    
    public init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
    
    public var magnitude: Double {
        return sqrt(x * x + y * y)
    }
    
    public var normalized: Vector2D {
        return Vector2D(x / magnitude, y / magnitude)
    }
    
    public var description: String {
        return "Vector2D(\(x), \(y))"
    }
    
    public var debugDescription: String {
        return "Vector2D(\(x), \(y)), magnitude: \(magnitude)"
    }
    
    public var hashValue: Int {
        return x.hashValue ^ y.hashValue
    }
    
    public static let zero = Vector2D(0, 0)
    public static let one = Vector2D(1, 1)
    public static let left = Vector2D(-1, 0)
    public static let right = Vector2D(1, 0)
    public static let up = Vector2D(0, 1)
    public static let down = Vector2D(0, -1)
}

public func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

public func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(left.x + right.x, left.y + right.y)
}

public func - (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(left.x - right.x, left.y - right.y)
}

public func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}

public func -= (inout left: Vector2D, right: Vector2D) {
    left = left - right
}

public func * (value: Double, vector: Vector2D) -> Vector2D {
    return Vector2D(value * vector.x, value * vector.y)
}

public func * (vector: Vector2D, value: Double) -> Vector2D {
    return value * vector
}

public prefix func - (vector: Vector2D) -> Vector2D {
    return Vector2D(-vector.x, -vector.y)
}

public func dotProduct(vectorA: Vector2D, vectorB:Vector2D) -> Double {
    return vectorA.x * vectorB.x + vectorA.y * vectorB.y
}

public extension CGVector {
    init (_ value: Vector2D) {
        self.dx = CGFloat(value.x)
        self.dy = CGFloat(value.y)
    }
}

public prefix func ~ (vector: Vector2D) -> CGVector {
    return CGVector(vector)
}
