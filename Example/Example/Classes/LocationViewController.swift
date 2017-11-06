//
//  InformationViewController.swift
//  Example
//
//  Created by 조재용 on 2017. 7. 17..
//  Copyright © 2017년 Yalantis. All rights reserved.
//

import Foundation
import UIKit


class LocationViewController : UIViewController, MTMapViewDelegate
{
    
    
   
    @IBAction func backButtonAction(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        

    }
      
    @IBOutlet var mapView: MTMapView!
    
  
    
    
    override func viewDidLoad() {
                
        print("gg")
        mapView.daumMapApiKey = "59a76107dcdf46ca70b93c8836821f60"
        mapView.delegate = self
        mapView.baseMapType = .standard
       
        super.viewDidLoad()
        
    }
 
    
        override func viewDidAppear(_ animated: Bool) {
            
           
        var items = [MTMapPOIItem]()
        items.append(poiItem(name: "오송역 엑스포", latitude: 36.6204530, longitude: 127.3273780))
       
        //위 부분은 viewDidLoad()에서 수행해도 괜찮습니다
        
           
            
            mapView.addPOIItems(items)
             mapView.setZoomLevel(5, animated: true)
            mapView.setMapCenter(MTMapPoint(geoCoord: .init(latitude: 36.6204530, longitude: 127.3273780)), animated: true)
    }
   
    func poiItem(name: String, latitude: Double, longitude: Double) -> MTMapPOIItem {
        let item = MTMapPOIItem()
        item.itemName = name
        item.markerType = .redPin
        item.markerSelectedType = .redPin
        item.mapPoint = MTMapPoint(geoCoord: .init(latitude: latitude, longitude: longitude))
        item.showAnimationType = .noAnimation
        item.customImageAnchorPointOffset = .init(offsetX: 30, offsetY: 0)    // 마커 위치 조정
        
        return item
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

