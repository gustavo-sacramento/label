//
//  GameViewController.swift
//  Label
//
//  Created by Gustavo Sacramento on 21/03/23.
//

import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.presentScene(scene)
    }
}

