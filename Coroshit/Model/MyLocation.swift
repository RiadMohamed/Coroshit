import Foundation
import CoreLocation

struct MyLocation {
    // MARK: - Properties
    var longCoordinate: CLLocationDegrees
    var latCoordinate: CLLocationDegrees
    var unixTimestamp: TimeInterval
    static var globalEnable = true
    
    init(long: CLLocationDegrees, lat: CLLocationDegrees) {
        self.longCoordinate = long
        self.latCoordinate = lat
        self.unixTimestamp = Date().timeIntervalSince1970
    }
}

// MARK: - String aliases for the properties.
extension MyLocation {
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
}
