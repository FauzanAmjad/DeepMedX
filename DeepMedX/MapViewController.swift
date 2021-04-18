//
//  MapViewController.swift
//  DeepMedX
//
//  Created by Fauzan Amjad on 4/18/21.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {
    @IBOutlet var Map: MKMapView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        var location = CLLocationCoordinate2D(latitude: 40.50167825696459, longitude: -74.45933935756415)
            var annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Saint Peter's Bariatric Center"
            Map.addAnnotation(annotation)
       
        var location1 = CLLocationCoordinate2D(latitude: 40.49327802062558, longitude: -74.44317543550751)
            var annotation1 = MKPointAnnotation()
            annotation1.coordinate = location1
            annotation1.title = "Family Medicine At Monument Sq"
            Map.addAnnotation(annotation1)
        
        var location2 = CLLocationCoordinate2D(latitude: 40.50139333416563, longitude: -74.4564500601056)
            var annotation2 = MKPointAnnotation()
            annotation2.coordinate = location2
            annotation2.title = "R-Health New Brunswick"
            Map.addAnnotation(annotation2)
        
        var location3 = CLLocationCoordinate2D(latitude: 40.48796957353043, longitude: -74.45022187783471)
            var annotation3 = MKPointAnnotation()
            annotation3.coordinate = location3
            annotation3.title = "Sanchez Sergio MD"
            Map.addAnnotation(annotation3)
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
