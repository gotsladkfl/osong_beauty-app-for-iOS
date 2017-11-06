//
//  DetailViewController.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 14/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import UIKit
import ElongationPreview


class Travel3DetailViewController: ElongationDetailViewController,MTMapViewDelegate {
    
    var l1: String = ""
    var l2: String = ""
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .black
        tableView.separatorStyle  = .none
        
        
        tableView.registerNib(TravelGridViewCell.self)
        
        
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
    
    
    
    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / image.size.width
        let newHeight = CGFloat(100)
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        
        
        image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeue(TravelGridViewCell.self)
        
        
        var items = [MTMapPOIItem]()
        items.append(poiItem(name: self.name, latitude: Double(self.l1)!, longitude: Double(self.l2)!))
        
        //위 부분은 viewDidLoad()에서 수행해도 괜찮습니다
        
        cell.hotelMap.daumMapApiKey = "59a76107dcdf46ca70b93c8836821f60"
        cell.hotelMap.delegate = self as! MTMapViewDelegate
        cell.hotelMap.baseMapType = .standard
        cell.hotelMap.addPOIItems(items)
        cell.hotelMap.setZoomLevel(3, animated: true)
        cell.hotelMap.setMapCenter(MTMapPoint(geoCoord: .init(latitude: Double(self.l1)!, longitude: Double(self.l2)!)), animated: true)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let appearance = ElongationConfig.shared
        let headerHeight = appearance.topViewHeight + appearance.bottomViewHeight
        let screenHeight = UIScreen.main.bounds.height
        return screenHeight - headerHeight
    }
    
}
