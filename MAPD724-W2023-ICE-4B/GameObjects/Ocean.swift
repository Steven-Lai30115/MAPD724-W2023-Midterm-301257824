import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    // constructor / initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        // rotate the ocean image
        zRotation = -CGFloat.pi / 2
        zPosition = Layer.ocean.rawValue
        horizontalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -2253)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 2253
    }
    
    func Move()
    {
        position.x -= horizontalSpeed!
    }
}
