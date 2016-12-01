//
//  PinAnnottion.swift
//  ReachOut
//
//  Created by fingent on 12/01/16.
//  Copyright © 2016 Fingent Technology Solutions. All rights reserved.
//

import MapKit
import Foundation
import CoreLocation



class PinAnnotation : NSObject, MKAnnotation {
    
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        super.init()
    }
        private var coord: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        var coordinateOfLocation: CLLocationCoordinate2D {
            get {
                return coord
            }
        }
        func setCoordinate(newCoordinate: CLLocationCoordinate2D) {
            self.coord = newCoordinate
        }
}
