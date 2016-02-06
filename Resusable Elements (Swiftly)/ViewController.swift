//
//  ViewController.swift
//  Resusable Elements (Swiftly)
//
//  Created by Colin Mackenzie on 06/02/2016.
//  Copyright © 2016 nilocski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, KeyboardViewDelegate {

    @IBOutlet var labelResults: UILabel!
    
    @IBOutlet weak var keyboardView:KeyboardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.keyboardView.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func keyboardButtonTapped(buttonNumber: NSInteger) {
        self.labelResults.text = String(buttonNumber)
    }
}

