//
//  StartViewController.swift
//  billby
//
//  Created by Macbook Air on 4/16/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

protocol testABC{
    func abc(a:String)
}

class StartViewController: UIViewController{
   

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        
        self.view.addGestureRecognizer(gesture)
        
        
    }
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        // Do what you want
//        let tutorialViewControler =  TutorialViewController();
//        navigationController?.pushViewController(tutorialViewControler, animated: false)
        let profileViewControler =  ProfileViewController();
        navigationController?.pushViewController(profileViewControler, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnEditProfile(_ sender: Any) {
        let editProfileViewControler =  EditProfileViewController();
        navigationController?.pushViewController(editProfileViewControler, animated: false)
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
