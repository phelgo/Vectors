// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import SceneKit

public struct Vector3D: CustomDebugStringConvertible, CustomStringConvertible, Equatable, Hashable {
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
    
    public var squaredMagnitude: Double {
        return x * x + y * y + z * z
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

public func dotProduct(vectorA: Vector3D, vectorB:Vector3D) -> Double {
    return vectorA.x * vectorB.x + vectorA.y * vectorB.y + vectorA.z * vectorB.z
}

infix operator -* { associativity left }

public func -*(left: Vector3D, right:Vector3D) -> Double {
    return dotProduct(left, vectorB: right)
}

public func crossProduct(vectorA: Vector3D, vectorB:Vector3D) -> Vector3D {
    return Vector3D(vectorA.y * vectorB.z - vectorA.z * vectorB.y, vectorA.z * vectorB.x - vectorA.x * vectorB.z, vectorA.x * vectorB.y - vectorA.y * vectorB.x)
}

infix operator +* { associativity left }

public func +*(left: Vector3D, right: Vector3D) -> Vector3D {
    return crossProduct(left, vectorB: right)
}

public extension SCNVector3 {
    init (_ value: Vector3D) {
        self.init(x: Float(value.x), y: Float(value.y), z: Float(value.z))
    }
}

public prefix func ~ (vector: Vector3D) -> SCNVector3 {
    return SCNVector3(vector)
}
