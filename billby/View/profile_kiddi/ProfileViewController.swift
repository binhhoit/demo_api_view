//
//  ProfileViewController.swift
//  billby
//
//  Created by Macbook Air on 4/18/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

import Presentr

class ProfileViewController: UIViewController, UITableViewDelegate,UITableViewDataSource, actionPopupDelegate {
  
  
    @IBOutlet weak var ivAvatarKid: UIImageView!
    @IBOutlet weak var btnPosition: UIButton!
    
    @IBOutlet weak var tbvConnectUser: UITableView!
    
    @IBOutlet weak var viewConnect: UIView!
    @IBOutlet weak var lblRetestAge: UILabel!
    @IBOutlet weak var svInfoProfile: UIScrollView!
    @IBOutlet weak var btnListConnect: UIButton!
    
    @IBOutlet weak var btnTest: HightLightButton!
    
    @IBOutlet weak var vTest: ViewCornerRadius!
    let user = ["1","2","3","4","5"];
    let nameCell = "ConnectTableViewCell"
    let dialog = DialogViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        
        ivAvatarKid.layer.borderWidth = 0
        ivAvatarKid.layer.masksToBounds = false
        ivAvatarKid.layer.cornerRadius = ivAvatarKid.frame.height/2
        ivAvatarKid.clipsToBounds = true
        
        btnPosition.layer.borderWidth = 0
        btnPosition.layer.masksToBounds = false
        btnPosition.layer.cornerRadius = 14
        btnPosition.clipsToBounds = true
        
        tbvConnectUser.register(UINib(nibName: nameCell, bundle: nil),forCellReuseIdentifier: nameCell)
        
//        retestAgeKid()
        
        btnConnectAction(btnListConnect)
    
    }
    
    func retestAgeKid(){
        let attributedString = NSMutableAttributedString(string: "Kiểm tra kế tiếp:\nngày 12/02/2018\n(24 tháng tuổi)", attributes: [
            .font: UIFont.systemFont(ofSize: 13.0, weight: .regular),
            .foregroundColor: UIColor(white: 33.0 / 255.0, alpha: 1.0),
            .kern: -0.01
            ])
        attributedString.addAttributes([
            .font: UIFont.systemFont(ofSize: 13.0, weight: .bold),
            .foregroundColor: UIColor(red: 42.0 / 255.0, green: 48.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)
            ], range: NSRange(location: 0, length: 17))
        
        attributedString.addAttributes([
            .font: UIFont.systemFont(ofSize: 13.0, weight: .bold),
            .foregroundColor: UIColor(red: 42.0 / 255.0, green: 48.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)
            ], range: NSRange(location: 23, length: 10))
        
        lblRetestAge.attributedText = attributedString

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: false);
    }
    
    @IBAction func btnQrAction(_ sender: Any) {
        navigationController?.popViewController(animated: false);
    }
    
    @IBAction func btnConnectAction(_ sender: Any) {
        viewConnect.isHidden = false
        svInfoProfile.isHidden = true
    }
    
    @IBAction func btnResult(_ sender: Any) {
        viewConnect.isHidden = true
        svInfoProfile.isHidden = false
    }
    
    @IBAction func nextScreenTestLibAction(_ sender: Any) {
//        navigationController?.pushViewController(LibViewController(), animated: false)
        UIView.animate(withDuration: 1.0) {
            self.btnTest.bounds.size.width = 30
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func btnTestDialogAction(_ sender: Any) {
        // create the alert
//        let alert = UIAlertController(title: "UIAlertController", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: UIAlertControllerStyle.alert)
//
//        // add the actions (buttons)
//        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
//        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
//
//        // show the alert
//        self.present(alert, animated: true, completion: nil)
        
       
        
        let presenter: Presentr = {
            let width = ModalSize.full
            let height = ModalSize.full
            let center = ModalCenterPosition.center
            let customType = PresentationType.custom(width: width, height: height, center: center)
            
            let customPresenter = Presentr(presentationType: customType)
            customPresenter.transitionType = .coverVerticalFromTop
            customPresenter.dismissTransitionType = .crossDissolve
            customPresenter.roundCorners = false
            customPresenter.backgroundColor = .black
            customPresenter.backgroundOpacity = 0.5
            customPresenter.dismissOnSwipe = true
            customPresenter.dismissOnSwipeDirection = .top
            return customPresenter
        }()
        
        dialog.delegate = self
        
        customPresentViewController(presenter, viewController: dialog, animated: true, completion: nil)
        presenter.presentationType = .popup
    }
    
    func access() {
        print("đồng ý")
        dialog.dismiss(animated: true, completion: nil)
    }
    
    func deny() {
        print("hủy")
        dialog.dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: nameCell) as!
        ConnectTableViewCell
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121;
    }

}
