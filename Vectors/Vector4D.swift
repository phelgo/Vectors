// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import SceneKit

struct Vector4D: DebugPrintable, Equatable, Hashable, Printable {
    let x: Double
    let y: Double
    let z: Double
    let w: Double
    
    init(_ x: Double, _ y: Double, _ z: Double, _ w: Double) {
        self.x = x
        self.y = y
        self.z = z
        self.w = w
    }
    
    var magnitude: Double {
        return sqrt(x * x + y * y + z * z + w * w)
    }
    
    var normalized: Vector4D {
        return Vector4D(x / magnitude, y / magnitude, z / magnitude, w / magnitude)
    }
    
    var description: String {
        return "Vector4D(\(x), \(y), \(z), \(w))"
    }
    
    var debugDescription: String {
        return "Vector4D(\(x), \(y), \(z), \(w)), magnitude: \(magnitude)"
    }
    
    var hashValue: Int {
        return x.hashValue ^ y.hashValue ^ z.hashValue ^ w.hashValue
    }
    
    static let zero = Vector4D(0, 0, 0, 0)
    static let one = Vector4D(1, 1, 1, 1)
}

func == (left: Vector4D, right: Vector4D) -> Bool {
    return (left.x == right.x) && (left.y == right.y) && (left.z == right.z) && (left.w == right.w)
}

func + (left: Vector4D, right: Vector4D) -> Vector4D {
    return Vector4D(left.x + right.x, left.y + right.y, left.z + right.z, left.w + right.w)
}

func - (left: Vector4D, right: Vector4D) -> Vector4D {
    return Vector4D(left.x - right.x, left.y - right.y, left.z - right.z, left.w - right.w)
}

func += (inout left: Vector4D, right: Vector4D) {
    left = left + right
}

func -= (inout left: Vector4D, right: Vector4D) {
    left = left - right
}

prefix func - (vector: Vector4D) -> Vector4D {
    return Vector4D(-vector.x, -vector.y, -vector.z, -vector.w)
}

extension SCNVector4 {
    init (_ value: Vector4D) {
        self.x = Float(value.x)
        self.y = Float(value.y)
        self.z = Float(value.z)
        self.w = Float(value.w)
    }
}

prefix func ~ (vector: Vector4D) -> SCNVector4 {
    return SCNVector4(vector)
}
