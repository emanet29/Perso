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
    var caPique = [#imageLiteral(resourceName: "Hurt (1)"),#imageLiteral(resourceName: "Hurt (2)"),#imageLiteral(resourceName: "Hurt (3)"),#imageLiteral(resourceName: "Hurt (4)"),#imageLiteral(resourceName: "Hurt (5)"),#imageLiteral(resourceName: "Hurt (6)"),#imageLiteral(resourceName: "Hurt (7)"),#imageLiteral(resourceName: "Hurt (8)"),#imageLiteral(resourceName: "Hurt (9)"),#imageLiteral(resourceName: "Hurt (10)")]
    var cestBon = [#imageLiteral(resourceName: "Jump (1)"),#imageLiteral(resourceName: "Jump (2)"),#imageLiteral(resourceName: "Jump (3)"),#imageLiteral(resourceName: "Jump (4)"),#imageLiteral(resourceName: "Jump (5)"),#imageLiteral(resourceName: "Jump (6)"),#imageLiteral(resourceName: "Jump (7)"),#imageLiteral(resourceName: "Jump (8)")]
    
    var timer = Timer()
    
    var etatDuChien: Etat = Etat.normal {
        didSet {
            if etatDuChien == .normal {
                animationDeBase()
            } else {
                animationSelonGout()
            }
        }
    }
    
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
    
    func animationSelonGout() {
        stopAnimating()
        
        image = #imageLiteral(resourceName: "Idle (1)")
        var arrayAUtiliser = [UIImage]()
        if etatDuChien == .cestBon {
            arrayAUtiliser = cestBon
        } else {
            arrayAUtiliser = caPique
        }
        var niveauDanimation = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (t) in
            if niveauDanimation >= arrayAUtiliser.count {
                self.timer.invalidate()
                self.etatDuChien = .normal
            } else {
                self.image = arrayAUtiliser[niveauDanimation]
                niveauDanimation += 1
            }
        })
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
