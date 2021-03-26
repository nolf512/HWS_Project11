//
//  GameScene.swift
//  HWS_Project11
//
//  Created by J on 2021/03/26.
//

import SpriteKit

class GameScene: SKScene {
    
 
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 512, y: 384)
        addChild(background)
        
        
    }
    
    
    
   
}
