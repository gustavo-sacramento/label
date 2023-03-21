//
//  GameScene.swift
//  Label
//
//  Created by Gustavo Sacramento on 21/03/23.
//

import SpriteKit

class GameScene: SKScene {
    let label = SKLabelNode(text: "Hello SpriteKit!")
    
    override func didMove(to view: SKView) {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(tap))
        label.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        label.fontSize = 45
        label.fontColor = SKColor.cyan
        label.fontName = "Avenir"
        
        addChild(label)
        view.addGestureRecognizer(recognizer)
    }
    
    @objc func tap(recognizer: UIGestureRecognizer) {
        let viewLocation = recognizer.location(in: view)
        let sceneLocation = convertPoint(fromView: viewLocation)
        let moveByAction = SKAction.moveBy(x: sceneLocation.x - label.position.x, y: sceneLocation.y - label.position.y, duration: 1)
        
        // Reversed action
        let moveByReversedAction = moveByAction.reversed()
        let moveByActions = [moveByAction, moveByReversedAction]
        let moveSequence = SKAction.sequence(moveByActions)
        let moveRepeatSequence = SKAction.repeat(moveSequence, count: 3)
        let moveRepeatForeverSequence = SKAction.repeatForever(moveSequence)
    
        label.run(moveRepeatForeverSequence)
    }
}
