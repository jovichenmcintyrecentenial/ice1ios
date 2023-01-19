//
//  GameScene.swift
//  MAPD724-W2034-ICE-1B
//
//  Created by Jovi on 18/01/2023.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ocean1:Ocean?
    var ocean2:Ocean?
    var plane:GameObject?
    
    override func sceneDidLoad() {
        
        name = "GAME"
        
        //add ocean
        ocean1 = Ocean()
        ocean2 = Ocean()
        ocean2?.position.y = -773
        addChild(ocean1!)
        addChild(ocean2!)

        //add plan
        plane = GameObject(imageString: "plane", initalScale: 2.0)
        addChild(plane!)


    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       print("Touch Down")
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        print("Touch Moved")

    }
    
    func touchUp(atPoint pos : CGPoint) {
        print("Touch Up")

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        ocean1?.update()
        ocean2?.update()

    }
}


