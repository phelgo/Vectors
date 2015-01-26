
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
}
