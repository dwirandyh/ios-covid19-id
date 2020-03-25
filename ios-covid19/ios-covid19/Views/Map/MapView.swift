//
//  MapView.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//


import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    let province: [Province]
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: -2.4328028, longitude: 111.7355887)
        let span = MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30) // zoom level
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        let provinceAnnotation = mapToPointAnnotation(provinces: self.province)
        uiView.addAnnotations(provinceAnnotation)
    }
    
    private func mapToPointAnnotation(provinces: [Province]) -> [MKPointAnnotation]{
        var result: [MKPointAnnotation] = []
        provinces.forEach { province in
            guard let latitude = province.attributes.latitude, let longitude = province.attributes.longitude else { return }
            
            let annotation =  MKPointAnnotation()
            annotation.title = "\(province.attributes.Provinsi)"
            annotation.subtitle = "Confirmed:\(province.attributes.Kasus_Posi) |  Recovered:\(province.attributes.Kasus_Semb) | Death: \(province.attributes.Kasus_Meni)"
            annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            
            result.append(annotation)
        }
       
        return result
    }
    
}
