//
//  EditProfileViewController.swift
//  billby
//
//  Created by Macbook Air on 4/23/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit
import DropDown
import Alamofire
import SwiftyJSON
import ObjectMapper

class EditProfileViewController: UIViewController {

    @IBOutlet weak var view2: UIView!
    var dropDown:DropDown!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown = DropDown()
        dropDown.anchorView = view2
        dropDown.dataSource = ["Car", "Motorcycle", "Truck"]
        dropDown.dismissMode = .onTap
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("Selected item: \(item) at index: \(index)")
        }
        
        // Will set a custom width instead of the anchor view width
        dropDown.width = 200
        dropDown.direction = .bottom
        dropDown.bottomOffset = CGPoint(x: self.view2.frame.maxX/3, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        DropDown.startListeningToKeyboard()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func roleSelectionAction(_ sender: Any) {

        dropDown.show()
    }
    
    @IBAction func callDemoApiAction(_ sender: Any) {
        demoAPI()
    }
    
    // With Alamofire
    func demoAPI() {
        
        Alamofire.request(URL(string: "http://kiddi.api.web.beesightsoft.com/api/categories/getAll")!, method: .get, parameters: nil, encoding: URLEncoding.queryString, headers: nil).responseJSON(completionHandler: { (data) in
            switch data.result {
            case .success(let data):
                
                let json = JSON(data)
                
                let category1 = Mapper<Category>().map(JSONObject: data)
                
                _ = Mapper<Category>().map(JSONObject: json.rawValue)
                for index in (category1?.categorys)!{
                    print(index.id as Any)
                }
                
                break
            case .failure(let error):
                print("Error ALAMOFIRE : \(error.localizedDescription)")
                break
            }
        })
       
    }

    
}
