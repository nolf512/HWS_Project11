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
        background.blendMode = .replace
        background.zPosition = -1 //一番背後に配置
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        addChild(background)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self) //画面がタッチされた場所
            let box = SKSpriteNode(color: UIColor.red, size: CGSize(width: 64, height: 64))
            box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
            box.position = location
            addChild(box)
        }
    }
    
   
}
