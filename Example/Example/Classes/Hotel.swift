//
//  Villa.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 09/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import Foundation


struct Hotel {
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





extension Hotel {
    static var testData: [Hotel] {
        return [
            Hotel(category:"관광호텔",country: "관광호텔", locality: "뮤제오",hotelImage:"hotelExplain01",imageName: "hotel01",l1:"36.6268790",l2:"127.4259800"),
              Hotel(category:"관광호텔",country: "관광호텔", locality: "세종스파텔",hotelImage:"hotelExplain02",imageName: "hotel02",l1:"36.7190940",l2:"127.5986000"),
               Hotel(category:"관광호텔",country: "관광호텔", locality: "마크관광호텔",hotelImage:"hotelExplain03",imageName: "hotel03",l1:"36.6268790",l2:"127.4259800"),
                Hotel(category:"관광호텔",country: "관광호텔", locality: "나무관광호텔",hotelImage:"hotelExplain04",imageName: "hotel04",l1:"36.6569540",l2:"127.5281720"),
                   Hotel(category:"관광호텔",country: "관광호텔", locality: "갤러리관광호텔",hotelImage:"hotelExplain05",imageName: "hotel05",l1:"36.6434330",l2:"127.4604980"),
                   Hotel(category:"관광호텔",country: "관광호텔", locality: "뉴베라관광호텔",hotelImage:"hotelExplain06",imageName: "hotel06",l1:"36.6280340",l2:"127.4300290"),
                   Hotel(category:"관광호텔",country: "관광호텔", locality: "그랜드플라자청주호텔",hotelImage:"hotelExplain07",imageName: "hotel07",l1:"36.6665480",l2:"127.4943750"),
                    Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "호텔락희 청주점",hotelImage:"hotelExplain08",imageName: "hotel08",l1:"36.6320680",l2:"127.4463150"),
                    Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "벨류호텔세종시티",hotelImage:"hotelExplain09",imageName: "hotel09",l1:"36.6293950",l2:"127.3283570"),
                    Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "제일여관",hotelImage:"pre",imageName: "pre",l1:"36.6510450",l2:"127.4870300"),
                    Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "약수탕여관",hotelImage:"pre",imageName: "pre",l1:"36.6309220",l2:"127.6602510"),
                    Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "양지모텔",hotelImage:"pre",imageName: "pre",l1:"36.6309220",l2:"127.6602510"),
                    Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "무진파크",hotelImage:"pre",imageName: "pre",l1:"36.6510450",l2:"127.4870300"),
                     Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "백야모텔",hotelImage:"pre",imageName: "pre",l1:"36.5974370",l2:"127.6088300"),
                     Hotel(category:"일반숙박업소",country: "일반숙박업소", locality: "할티모텔",hotelImage:"pre",imageName: "pre",l1:"36.6510450",l2:"127.4870300"),
                     Hotel(category:"펜션/민박",country: "펜션/민박", locality: "황토방",hotelImage:"pre",imageName: "pre",l1:"36.6232370",l2:"127.6973280"),
                     Hotel(category:"펜션/민박",country: "펜션/민박", locality: "지픈골",hotelImage:"pre",imageName: "pre",l1:"36.6510450",l2:"127.4870300"),
                     Hotel(category:"펜션/민박",country: "펜션/민박", locality: "금관절경",hotelImage:"pre",imageName: "pre",l1:"36.6510450",l2:"127.4870300"),
                      Hotel(category:"펜션/민박",country: "펜션/민박", locality: "송죽헌",hotelImage:"pre",imageName: "pre",l1:"36.6510450",l2:"127.4870300"),
                       Hotel(category:"펜션/민박",country: "펜션/민박", locality: "청개구리농원",hotelImage:"pre",imageName: "pre",l1:"36.6133300",l2:"127.6855390"),
                       Hotel(category:"펜션/민박",country: "펜션/민박", locality: "흐르는강물처럼",hotelImage:"pre",imageName: "pre",l1:"36.6232370",l2:"127.6973280"),
        ]
    }
}
