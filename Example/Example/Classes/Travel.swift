//
//  Villa.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 09/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import Foundation


struct Travel {
    let category: String
    let country: String
    let locality: String
    
    let hotelImage: String
    let imageName: String
    let l1: String
    let l2: String
    
    init(category: String,country: String, locality: String,hotelImage: String,imageName: String,l1: String,l2: String)
    {
        self.category = category
        self.country = country
        self.locality = locality
        self.hotelImage = hotelImage
        self.imageName = imageName
        self.l1 = l1
        self.l2 = l2
    }
}





extension Travel {
    static var testData: [Travel] {
        return [
            Travel(category:"내수/초정",country: "내수/초정", locality: "초정약수",hotelImage:"travelExplain01",imageName: "travel01",l1:"36.7191210",l2:"127.5986550"),
            Travel(category:"내수/초정",country: "내수/초정", locality: "손병희 선생 유허지",hotelImage:"travelExplain02",imageName: "travel02",l1:"36.7485140",l2:"127.5530660"),
            Travel(category:"내수/초정",country: "내수/초정", locality: "구라산성",hotelImage:"travelExplain03",imageName: "travel03",l1:"36.6893550",l2:"127.6077890"),
            Travel(category:"내수/초정",country: "내수/초정", locality: "운보의집",hotelImage:"travelExplain04",imageName: "travel04",l1:"36.6919480",l2:"127.5650460"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "벌랏한지마을",hotelImage:"travelExplain05",imageName: "travel05",l1:"36.6510450",l2:"127.4870300"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "양성산성",hotelImage:"travelExplain06",imageName: "travel06",l1:"36.6510450",l2:"127.4870300"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "현암사",hotelImage:"travelExplain07",imageName: "travel07",l1:"36.6424340",l2:"127.4890320"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "작은용굴",hotelImage:"travelExplain08",imageName: "travel08",l1:"36.7200000",l2:"127.4100000"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "청남대",hotelImage:"travelExplain09",imageName: "travel09",l1:"36.4600000",l2:"127.4900000"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "문의문화재단지",hotelImage:"travelExplain10",imageName: "travel10",l1:"36.5100000",l2:"127.4900000"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "문의문화재단지",hotelImage:"travelExplain10",imageName: "travel10",l1:"36.5100000",l2:"127.4900000"),
            Travel(category:"문의/대청호",country: "문의/대청호", locality: "대청호",hotelImage:"travelExplain11",imageName: "travel11",l1:"36.4800000",l2:"127.4800000"),
            Travel(category:"미원/옥화",country: "미원/옥화", locality: "미동산수목원",hotelImage:"travelExplain12",imageName: "travel12",l1:"36.6300000",l2:"127.6700000"),
            Travel(category:"미원/옥화",country: "미원/옥화", locality: "옥화자연휴양림",hotelImage:"travelExplain13",imageName: "travel13",l1:"36.6000000",l2:"127.7000000"),
            Travel(category:"미원/옥화",country: "미원/옥화", locality: "옥화9경",hotelImage:"travelExplain14",imageName: "travel14",l1:"36.6100000",l2:"127.7000000"),

        ]
    }
}
