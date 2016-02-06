//
//  KeyboardView.swift
//  Resusable Elements (Swiftly)
//
//  Created by Colin Mackenzie on 06/02/2016.
//  Copyright © 2016 nilocski. All rights reserved.
//

import UIKit

protocol KeyboardViewDelegate: class {
    func keyboardButtonTapped(buttonNumber:NSInteger)
}

class KeyboardView: UIView {
    
    var delegate:KeyboardViewDelegate?

    @IBOutlet var view: UIView!


    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        NSBundle.mainBundle().loadNibNamed("KeyboardView", owner: self, options: nil)
        self.addSubview(self.view)
    }

    @IBAction func buttonTapped(sender:CircleButton) {
        let buttonNumber = sender.tag
        self.delegate?.keyboardButtonTapped(buttonNumber)
    }

}
