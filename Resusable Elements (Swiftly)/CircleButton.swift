//
//  CircleButton.swift
//  Resusable Elements (Swiftly)
//
//  Created by Colin Mackenzie on 06/02/2016.
//  Copyright © 2016 nilocski. All rights reserved.
//

import UIKit

class CircleButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButtonStyle()
    }
 
    override func awakeFromNib() {
        setupButtonStyle()
    }
    
    func setupButtonStyle() {
        self.layer.backgroundColor = UIColor.clearColor().CGColor
      //  self.layer.borderColor     = UIColor.redColor().CGColor
      //  self.layer.borderWidth     = 1
        
       // self.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.layer.cornerRadius = self.layer.bounds.size.width / 3
    }
    
    override var highlighted: Bool {
    didSet {
            if highlighted {
                self.activateHighlight()
            }
            else {
            self.deactivateHighlight()
            }
        }
    }
    
    func activateHighlight() {
        self.layer.backgroundColor = UIColor.redColor().CGColor
    }
    func deactivateHighlight() {
        self.layer.backgroundColor = UIColor.clearColor().CGColor
    }
    
}
