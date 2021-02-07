//
//  MapViewController.swift
//  MapTestApp
//
//  Created by students on 2/6/21.
//

import Foundation
import MapKit

class MapViewController: UIViewController {
    let annotation = MKPointAnnotation()

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        // stuff
        super.viewDidLoad()
        
        //google maps pin 'what's this' lolHS 41.318774,-72.3271857


        let initialLocation = CLLocation(latitude: 41.3159, longitude: -72.3290) // OLD LYME!!!

        // Center the map on Old Lyme with a 6 mile radius
        // 10,000 is townlevel 1,000 is zoomed
        let coordinateRegion = MKCoordinateRegion(
          center: initialLocation.coordinate,
          latitudinalMeters:500,
          longitudinalMeters: 500)
        
        mapView.setRegion(coordinateRegion, animated: true)
        
        // lets show a location of interest on the map
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: 41.36757, longitude: -72.32698)
                annotation.title = "Mr. Fisler's House"
                annotation.subtitle = "May the Force be with you"
                mapView.addAnnotation(annotation)
    }
    

}
