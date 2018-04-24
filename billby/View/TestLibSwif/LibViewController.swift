//
//  LibViewController.swift
//  billby
//
//  Created by Macbook Air on 4/19/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit
import MarqueeLabel

class LibViewController: UIViewController {

    @IBOutlet weak var lbtest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var label1 = MarqueeLabel.init(frame: lbtest.frame, duration: 8.0, fadeLength: 10.0)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
