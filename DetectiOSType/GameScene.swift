//
//  GameScene.swift
//  DeviceTest
//
//  Created by Ben Kane Johns on 9/05/2016.
//  Copyright (c) 2016 Ben Kane Johns. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // Screen size detection
    let screenSize: CGRect = UIScreen.mainScreen().bounds
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        // Access in the current screen width and height
        let screenWidth = screenSize.width
        
        // Request an UITraitCollection instance
        let deviceIdiom = UIScreen.mainScreen().traitCollection.userInterfaceIdiom
        
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!"
        
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        // Check the idiom to find out the current device type
        switch (deviceIdiom) {
            // Display myLabel with the appropriate font size for the device type.
        case .Phone:
            switch screenWidth {
            case 0...320:
                // iPhone 5 portrait
                myLabel.fontSize = 41
            case 321...375:
                // iPhone 6 portrait
                myLabel.fontSize = 43
            default:
                // iPhone 6 Plus portrait
                myLabel.fontSize = 45
            }
        case .Pad:
            // iPad 2, Air, Retina and Mini etc Portrait
            myLabel.fontSize = 58
        default:
            break
        }
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
