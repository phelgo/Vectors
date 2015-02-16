// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import SceneKit

public struct Vector4D: DebugPrintable, Equatable, Hashable, Printable {
    public let x: Double
    public let y: Double
    public let z: Double
    public let w: Double
    
    public init(_ x: Double, _ y: Double, _ z: Double, _ w: Double) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    public var magnitude: Double {
        return sqrt(x * x + y * y + z * z + w * w)
    }
    
    public var normalized: Vector4D {
        return Vector4D(x / magnitude, y / magnitude, z / magnitude, w / magnitude)
    }
    
    public var description: String {
        return "Vector4D(\(x), \(y), \(z), \(w))"
    }
    
    public var debugDescription: String {
        return "Vector4D(\(x), \(y), \(z), \(w)), magnitude: \(magnitude)"
    }
    
    public var hashValue: Int {
        return x.hashValue ^ y.hashValue ^ z.hashValue ^ w.hashValue
    }
    
    public static let zero = Vector4D(0, 0, 0, 0)
    public static let one = Vector4D(1, 1, 1, 1)
}

public func == (left: Vector4D, right: Vector4D) -> Bool {
    return (left.x == right.x) && (left.y == right.y) && (left.z == right.z) && (left.w == right.w)
}

public func + (left: Vector4D, right: Vector4D) -> Vector4D {
    return Vector4D(left.x + right.x, left.y + right.y, left.z + right.z, left.w + right.w)
}

public func - (left: Vector4D, right: Vector4D) -> Vector4D {
    return Vector4D(left.x - right.x, left.y - right.y, left.z - right.z, left.w - right.w)
}

public func += (inout left: Vector4D, right: Vector4D) {
    left = left + right
}

public func -= (inout left: Vector4D, right: Vector4D) {
    left = left - right
}

public prefix func - (vector: Vector4D) -> Vector4D {
    return Vector4D(-vector.x, -vector.y, -vector.z, -vector.w)
}

public extension SCNVector4 {
    init (_ value: Vector4D) {
        self.x = Float(value.x)
        self.y = Float(value.y)
        self.z = Float(value.z)
        self.w = Float(value.w)
    }
}

public prefix func ~ (vector: Vector4D) -> SCNVector4 {
    return SCNVector4(vector)
}
