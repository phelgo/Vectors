
// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import Darwin

struct Vector4D {
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
    
    static let zero = Vector4D(0, 0, 0, 0)
    static let one = Vector4D(1, 1, 1, 1)
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
