
import Darwin

struct Vector3D {
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
    
    static let zero = Vector3D(0, 0, 0)
    static let one = Vector3D(1, 1, 1)
    static let left = Vector3D(-1, 0, 0)
    static let right = Vector3D(1, 0, 0)
    static let up = Vector3D(0, 1, 0)
    static let down = Vector3D(0, -1, 0)
    static let forward = Vector3D(0, 0, 1)
    static let back = Vector3D(0, 0, -1)
}

