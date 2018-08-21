//
//  ViewController.swift
//  Perso
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chien: Chien!
    @IBOutlet weak var gateau: Aliment!
    @IBOutlet weak var piment: Aliment!
    
    var frameDeBase: CGRect?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gateau.gout = .cestBon
        piment.gout = .caPique
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first, let vue = touch.view as? Aliment else { return }
        frameDeBase = vue.frame
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first, let vue = touch.view as? Aliment else { return }
        let position = touch.location(in: self.view)
        vue.center = position
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first, let vue = touch.view as? Aliment else { return }
        guard let ancienneFrame = frameDeBase  else { return }
        let position = touch.location(in: self.view)
        if chien.frame.contains(position) {
            chien.etatDuChien = vue.gout
        }
        vue.frame = ancienneFrame
        
        
    }
}

