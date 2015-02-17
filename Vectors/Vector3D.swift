// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import SceneKit

public struct Vector3D: DebugPrintable, Equatable, Hashable, Printable {
    public let x: Double
    public let y: Double
    public let z: Double
    
    public init(_ x: Double, _ y: Double, _ z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public var magnitude: Double {
        return sqrt(x * x + y * y + z * z)
    }
    
    public var normalized: Vector3D {
        return Vector3D(x / magnitude, y / magnitude, z / magnitude)
    }
    
    public var description: String {
        return "Vector3D(\(x), \(y), \(z))"
    }
    
    public var debugDescription: String {
        return "Vector3D(\(x), \(y), \(z)), magnitude: \(magnitude)"
    }
    
    public var hashValue: Int {
        return x.hashValue ^ y.hashValue ^ z.hashValue
    }
    
    public static let zero = Vector3D(0, 0, 0)
    public static let one = Vector3D(1, 1, 1)
    public static let left = Vector3D(-1, 0, 0)
    public static let right = Vector3D(1, 0, 0)
    public static let up = Vector3D(0, 1, 0)
    public static let down = Vector3D(0, -1, 0)
    public static let forward = Vector3D(0, 0, 1)
    public static let back = Vector3D(0, 0, -1)
}

public func == (left: Vector3D, right: Vector3D) -> Bool {
    return (left.x == right.x) && (left.y == right.y) && (left.z == right.z)
}

public func + (left: Vector3D, right: Vector3D) -> Vector3D {
    return Vector3D(left.x + right.x, left.y + right.y, left.z + right.z)
}

public func - (left: Vector3D, right: Vector3D) -> Vector3D {
    return Vector3D(left.x - right.x, left.y - right.y, left.z - right.z)
}

public func += (inout left: Vector3D, right: Vector3D) {
    left = left + right
}

public func -= (inout left: Vector3D, right: Vector3D) {
    left = left - right
}

public func * (value: Double, vector: Vector3D) -> Vector3D {
    return Vector3D(value * vector.x, value * vector.y, value * vector.z)
}

public func * (vector: Vector3D, value: Double) -> Vector3D {
    return value * vector
}

public prefix func - (vector: Vector3D) -> Vector3D {
    return Vector3D(-vector.x, -vector.y, -vector.z)
}

public extension SCNVector3 {
    init (_ value: Vector3D) {
        self.x = Float(value.x)
        self.y = Float(value.y)
        self.z = Float(value.z)
    }
}

public prefix func ~ (vector: Vector3D) -> SCNVector3 {
    return SCNVector3(vector)
}
