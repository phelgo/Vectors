
// Vector structs for Swift
// Copyright (c) 2015 phelgo. MIT licensed.

import Darwin

struct Vector2D {
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

func + (lhs: Vector2D, rhs: Vector2D) -> Vector2D {
    return Vector2D(lhs.x + rhs.x, lhs.y + rhs.y)
}

func - (lhs: Vector2D, rhs: Vector2D) -> Vector2D {
    return Vector2D(lhs.x - rhs.x, lhs.y - rhs.y)
}
