//
//  ConnectTableViewCell.swift
//  billby
//
//  Created by Macbook Air on 4/18/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class ConnectTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNumberPhone: UILabel!
    @IBOutlet weak var ivAvatarUser: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lbNumberPhone.attributedText = NSAttributedString(string: "15462696363", attributes:
            [.underlineStyle: NSUnderlineStyle.styleSingle.rawValue])
        
        ivAvatarUser.layer.borderWidth = 0
        ivAvatarUser.layer.masksToBounds = false
        ivAvatarUser.layer.cornerRadius = ivAvatarUser.frame.height/2
        ivAvatarUser.clipsToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
