//
//  Chien.swift
//  Perso
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class Chien: UIImageView {
    
    var base = [#imageLiteral(resourceName: "Idle (1)"),#imageLiteral(resourceName: "Idle (2)"),#imageLiteral(resourceName: "Idle (3)"),#imageLiteral(resourceName: "Idle (4)"),#imageLiteral(resourceName: "Idle (5)"),#imageLiteral(resourceName: "Idle (6)"),#imageLiteral(resourceName: "Idle (7)"),#imageLiteral(resourceName: "Idle (7)"),#imageLiteral(resourceName: "Idle (8)"),#imageLiteral(resourceName: "Idle (9)"),#imageLiteral(resourceName: "Idle (10)")]
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        animationDeBase()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animationDeBase()
    }
    
    
    func animationDeBase() {
        animationImages = base
        animationDuration = 1
        animationRepeatCount = 0
        startAnimating()
        
    }
    
    
    
}
