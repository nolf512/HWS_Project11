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
        
        addChild(background)
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
//        let bouncer = SKSpriteNode(imageNamed: "bouncer")
//        bouncer.position = CGPoint(x: 512, y: 0)
//        bouncer.physicsBody = SKPhysicsBody(circleOfRadius: bouncer.size.width / 2.0)
//        bouncer.physicsBody?.isDynamic = false
//        addChild(bouncer)
        
        makeBouncer(at: CGPoint(x: 0, y: 0))
        makeBouncer(at: CGPoint(x: 256, y: 0))
        makeBouncer(at: CGPoint(x: 512, y: 0))
        makeBouncer(at: CGPoint(x: 768, y: 0))
        makeBouncer(at: CGPoint(x: 1024, y: 0))
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self) //画面がタッチされた場所
//            let box = SKSpriteNode(color: UIColor.red, size: CGSize(width: 64, height: 64))
//            box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 64, height: 64))
//            box.position = location
//            addChild(box)
            let ball = SKSpriteNode(imageNamed: "ballRed")
            ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2.0)
            ball.physicsBody?.restitution = 0.4
            ball.position = location
            addChild(ball)
            
            
        }
    }
    
    func makeBouncer(at position: CGPoint){
        let bouncer = SKSpriteNode(imageNamed: "bouncer")
        bouncer.position = position
        bouncer.physicsBody = SKPhysicsBody(circleOfRadius: bouncer.size.width / 2.0)
        bouncer.physicsBody?.isDynamic = false
        addChild(bouncer)
    }
   
}
