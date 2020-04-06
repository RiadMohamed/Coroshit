//
//  ViewController.swift
//  Coroshit
//
//  Created by Riad Mohamed on 4/5/20.
//  Copyright © 2020 Riad Mohamed. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    // MARK: - Properties
    var myLocation: MyLocation? {
        didSet {
            longLabel.text = myLocation?.longString ?? ""
            latLabel.text = myLocation?.latString ?? ""
        }
    }
    var locationManager = CLLocationManager()
    
    // MARK: - Outlets
    @IBOutlet weak var QRImageView: UIImageView!
    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
        }
    }
    // MARK: - UI Actions
    @IBAction func changeStatusButtonTapped(_ sender: UIButton) {
        print(11)
    }
    
    @IBAction func syncButtonTapped(_ sender: UIButton) {
        print(12)
    }
    
    @IBAction func startServiceButtonTapped(_ sender: UIButton) {
        locationManager.requestLocation()
        
    }
    
    @IBAction func stopServiceButtonTapped(_ sender: UIButton) {
        print(14)
    }
    
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last! as CLLocation
        myLocation = MyLocation(long: location.coordinate.longitude, lat: location.coordinate.latitude)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
