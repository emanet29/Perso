//
//  Aliment.swift
//  Perso
//
//  Created by Snoopy on 21/08/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class Aliment: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        isUserInteractionEnabled = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isUserInteractionEnabled = true
        
    }
    
    
    
}
