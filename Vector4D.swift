
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

func + (lhs: Vector4D, rhs: Vector4D) -> Vector4D {
    return Vector4D(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w)
}

func - (lhs: Vector4D, rhs: Vector4D) -> Vector4D {
    return Vector4D(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w)
}
