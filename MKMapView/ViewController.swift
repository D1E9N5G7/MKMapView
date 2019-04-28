//
//  ViewController.swift
//  MKMapView
//
//  Created by Apple on 2019/4/27.
//  Copyright © 2019 com.deng. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mMKMapView = MKMapView(frame: self.view.frame)
        mMKMapView.mapType = MKMapType.standard
        mMKMapView.showsUserLocation = true
        mMKMapView.showsCompass = true
        mMKMapView.showsBuildings = true
        mMKMapView.showsScale = true
        
        let coordinate = CLLocationCoordinate2D(latitude: 37.964102, longitude: 114.422711)
        let zoomlevel = 0.02
        let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan.init(latitudeDelta: zoomlevel, longitudeDelta: zoomlevel))
        mMKMapView.setRegion(region, animated: true)
        
        let pointAnnotation = MKPointAnnotation()
        pointAnnotation.coordinate = coordinate
        pointAnnotation.title = "shi jia zhuang"
        pointAnnotation.subtitle = "my hometown"
        mMKMapView.addAnnotation(pointAnnotation)
        
        self.view.addSubview(mMKMapView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

