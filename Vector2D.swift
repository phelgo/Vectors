
// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import Darwin

struct Vector2D: Equatable {
    let x: Double
    let y: Double
    
    init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
    
    var magnitude: Double {
        return sqrt(x * x + y * y)
    }
    
    var normalized: Vector2D {
        return Vector2D(x / magnitude, y / magnitude)
    }
    
    static let zero = Vector2D(0, 0)
    static let one = Vector2D(1, 1)
    static let left = Vector2D(-1, 0)
    static let right = Vector2D(1, 0)
    static let up = Vector2D(0, 1)
    static let down = Vector2D(0, -1)
}

func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(left.x + right.x, left.y + right.y)
}

func - (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(left.x - right.x, left.y - right.y)
}

func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}

func -= (inout left: Vector2D, right: Vector2D) {
    left = left - right
}

prefix func - (vector: Vector2D) -> Vector2D {
    return Vector2D(-vector.x, -vector.y)
}
