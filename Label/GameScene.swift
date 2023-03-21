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
        label.position = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        label.fontSize = 45
        label.fontColor = SKColor.cyan
        label.fontName = "Avenir"
        
        addChild(label)
    }
}
