//
//  ViewController.swift
//  MapViewClustering
//
//  Created by seyedamirhossein hashemi on 2018-02-15.
//  Copyright © 2018 seyedamirhossein hashemi. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationValue: [[String:String]] {
        get {
            let locationValue = [["name":"loc1","lat":"45.4973","log":"-73.5790"],
                 ["name":"loc2","lat":"45.5048","log":"-73.5772"],
                 ["name":"loc3","lat":"45.4697","log":"-73.7449"],
                 ["name":"loc4","lat":"45.5536111","log":"-73.5561111"]]
            return locationValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        
        mapView.register(LocationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        let locationsList = Location.locations(fromDictionaries: locationValue)
        mapView.showAnnotations(locationsList, animated: true)
        mapView.addAnnotations(locationsList)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


extension ViewController: MKMapViewDelegate {
    
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        var view = mapView.dequeueReusableAnnotationView(withIdentifier: "reuseIdentifier") as? MKMarkerAnnotationView
//        if view == nil {
//            view = MKMarkerAnnotationView(annotation: nil, reuseIdentifier: "reuseIdentifier")
//        }
//        view?.annotation = annotation
//        view?.displayPriority = .required
//        return view
//    }
}






