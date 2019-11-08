//
//  ViewController.swift
//  googlemap
//
//  Created by Felix 05 on 08/11/19.
//  Copyright © 2019 felix. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {
//AIzaSyD7GXTIGSnwrD3fI5G7QBkhLCzOiNtGAT0
    override func viewDidLoad() {
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
}
