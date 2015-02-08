// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import SceneKit

struct Vector3D: Equatable {
    let x: Double
    let y: Double
    let z: Double
    
    init(_ x: Double, _ y: Double, _ z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    var magnitude: Double {
        return sqrt(x * x + y * y + z * z)
    }
    
    var normalized: Vector3D {
        return Vector3D(x / magnitude, y / magnitude, z / magnitude)
    }
    
    static let zero = Vector3D(0, 0, 0)
    static let one = Vector3D(1, 1, 1)
    static let left = Vector3D(-1, 0, 0)
    static let right = Vector3D(1, 0, 0)
    static let up = Vector3D(0, 1, 0)
    static let down = Vector3D(0, -1, 0)
    static let forward = Vector3D(0, 0, 1)
    static let back = Vector3D(0, 0, -1)
}

func == (left: Vector3D, right: Vector3D) -> Bool {
    return (left.x == right.x) && (left.y == right.y) && (left.z == right.z)
}

func + (left: Vector3D, right: Vector3D) -> Vector3D {
    return Vector3D(left.x + right.x, left.y + right.y, left.z + right.z)
}

func - (left: Vector3D, right: Vector3D) -> Vector3D {
    return Vector3D(left.x - right.x, left.y - right.y, left.z - right.z)
}

func += (inout left: Vector3D, right: Vector3D) {
    left = left + right
}

func -= (inout left: Vector3D, right: Vector3D) {
    left = left - right
}

prefix func - (vector: Vector3D) -> Vector3D {
    return Vector3D(-vector.x, -vector.y, -vector.z)
}

extension SCNVector3 {
    init (_ value: Vector3D) {
        self.x = Float(value.x)
        self.y = Float(value.y)
        self.z = Float(value.z)
    }
}

prefix func ~ (vector: Vector3D) -> SCNVector3 {
    return SCNVector3(vector)
}
