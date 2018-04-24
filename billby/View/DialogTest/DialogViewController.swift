//
//  DialogViewController.swift
//  billby
//
//  Created by Macbook Air on 4/20/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class DialogViewController: UIViewController {

    var delegate: actionPopupDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnAcceptAction(_ sender: Any) {
        delegate?.access()
       
        
    }
    
    @IBAction func btnDissmissAction(_ sender: Any) {
        delegate?.deny()
       
    }
    
}

protocol actionPopupDelegate {
    func access()
    func deny()
}

