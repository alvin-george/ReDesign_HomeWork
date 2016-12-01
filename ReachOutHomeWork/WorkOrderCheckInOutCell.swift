//
//  WorkOrderCheckInOutCell.swift
//  ReachOutHomeWork
//
//  Created by Alvin George on 11/29/16.
//  Copyright © 2016 Alvin George. All rights reserved.
//

import UIKit

class WorkOrderCheckInOutCell: UITableViewCell {

    @IBOutlet weak var checkInOutDetailsTectView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        checkInOutDetailsTectView.text = "• "+"Check in : 9.00 AM\n"+"• "+"Check out : 12.00 AM\n"+"• "+"Check in : 9.00 AM\n"+"• "+"Check out : 12.00 AM\n"+"• "+"Check in : 9.00 AM\n"+"• "+"Check out : 12.00 AM\n"


    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
