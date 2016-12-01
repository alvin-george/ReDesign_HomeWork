//
//  WorkOrderContactTableViewCell.swift
//  ReachOut
//
//  Created by Alvin George on 10/7/16.
//  Copyright © 2016 Fingent Technology Solutions. All rights reserved.
//

import UIKit
import Foundation

class WorkOrderContactTableViewCell: UITableViewCell {

    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactCallButton: UIButton!
    @IBOutlet weak var contactEmailAndNumberLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!

    @IBOutlet weak var messageIcon: UIImageView!
    @IBOutlet weak var callBtnImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    @IBAction func callButtonTapped(sender: AnyObject) {
       print("callButton Tag :\(sender.tag)")

//        let contactInfo = contactList[sender.tag]        //
//        if let phoneCallURL:NSURL = NSURL(string:"tel://\(contactInfo.phoneNumber)") {
//            let application:UIApplication = UIApplication.sharedApplication()
//            if (application.canOpenURL(phoneCallURL)) {
//                application.openURL(phoneCallURL);
//            }
//        }

    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
