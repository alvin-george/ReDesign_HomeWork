//
//  WorkOrderInstructionsCell.swift
//  ReachOut
//
//  Created by Alvin George on 10/20/16.
//  Copyright © 2016 Fingent Technology Solutions. All rights reserved.
//

import UIKit

class WorkOrderInstructionsCell: UITableViewCell {

    var descriptionLabelHeight :CGFloat?

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var topBoarderView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        sizeToFit()
        layoutIfNeeded()
        descriptionLabel.text = "This email and any files transmitted with it are confidential and intended solely for the use of the individual or entity to whom they are addressed. If you have received this email in error please notify the system manager. \nThis message contains confidential information and is intended only for the individual named. If you are not the named addressee you should not disseminate, distribute or copy this e-mail. Please notify the sender immediately by e-mail if you have received this e-mail by mistake and delete this e-mail from your system.\n If you are not the intended recipient you are notified that disclosing, copying, distributing or taking any action in reliance on the contents of this information is strictly prohibited."
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
