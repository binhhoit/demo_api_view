//
//  TutorialViewController.swift
//  billby
//
//  Created by Macbook Air on 4/16/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var sclMain: UIScrollView!
    
    @IBOutlet var vNumber1: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SCroll View ìf full screen
        self.sclMain.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentBehavior.never

        // Do any additional setup after loading the view.
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        
        self.view.addGestureRecognizer(gesture)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        // Do what you want
        let loginViewControler =  LoginViewController()
        navigationController?.pushViewController(loginViewControler, animated: false)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("Scroll x/width = index")
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        print(page)
        
        switch page {
        case 0:
            setColor(page: 0);
            break
        case 1:
            setColor(page: 1);
            break
        case 2:
            setColor(page: 2)
            break
        case 3:
            setColor(page: 3);
        default:
            setColor(page: 0);
            break
        }
    }
    
    func setColor(page : Int) {
        for index in 0...3{
            if index==page{
                vNumber1[index].backgroundColor = UIColor(red: 65/255, green: 117/255, blue: 5/255, alpha: 1)
            }else{
                vNumber1[index].backgroundColor = UIColor(red: 133/255, green: 223/255, blue: 33/255, alpha: 1)
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
