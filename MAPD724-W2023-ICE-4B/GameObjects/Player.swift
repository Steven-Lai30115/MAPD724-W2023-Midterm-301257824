import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zRotation = -CGFloat.pi / 2
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the left boundary
        if(position.y <= -310)
        {
            position.y = -310
        }
        
        // constrain the player on the right boundary
        if(position.y >= 310)
        {
            position.y = 310
        }
    }
    
    override func Reset()
    {
        position.x = -640
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
