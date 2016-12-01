//
//  WorkOrderMapTableViewCell.swift
//  ReachOut
//
//  Created by Alvin George on 10/6/16.
//  Copyright © 2016 Fingent Technology Solutions. All rights reserved.
//

import UIKit
import MapKit
import Foundation
import CoreLocation

class WorkOrderMapTableViewCell: UITableViewCell, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet weak var workOrderDetailMapView: MKMapView!
    @IBOutlet weak var mapViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var locationDistanceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        print(UIScreen.mainScreen().bounds.size.height)

        //mapViewHeightConstraint.constant = UIScreen.mainScreen().bounds.size.height/2.5
        workOrderDetailMapView.frame.size.height = UIScreen.mainScreen().bounds.size.height/2.5
    }
    //MARK: - Handle Map Annotations

       override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
