import Foundation
import CoreLocation

struct MyLocation {
    // MARK: - Properties
    var longCoordinate: CLLocationDegrees
    var latCoordinate: CLLocationDegrees
    var unixTimestamp: TimeInterval
    
    // MARK: - Properties Aliases
    var longString: String {
        get {
            return String(longCoordinate)
        }
    }
    
    var latString: String {
        get {
            return String(latCoordinate)
        }
    }
    
    var timestampString: String {
        get {
            return String(unixTimestamp)
        }
    }
    
    init(long: CLLocationDegrees, lat: CLLocationDegrees) {
        self.longCoordinate = long
        self.latCoordinate = lat
        self.unixTimestamp = Date().timeIntervalSince1970
    }
}
