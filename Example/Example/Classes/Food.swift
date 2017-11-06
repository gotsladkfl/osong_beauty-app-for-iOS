//
//  Villa.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 09/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import Foundation


struct Food {
    let category: String
    let country: String
    let locality: String
    
    let hotelImage: String
    let hotel2Image: String
    let hotel3Image: String
    let imageName: String
    let l1: String
    let l2: String
    
    init(category: String,country: String, locality: String,hotelImage: String, hotel2Image: String,hotel3Image: String,imageName: String,l1: String,l2: String)
    {
        self.category = category
        self.country = country
        self.locality = locality
        self.hotelImage = hotelImage
        self.hotel2Image = hotel2Image
        self.hotel3Image = hotel3Image
        self.imageName = imageName
        self.l1 = l1
        self.l2 = l2
    
    }
}





extension Food {
    static var testData: [Food] {
        return [
            Food(category:"한식",country: "한식", locality: "자연밥상",hotelImage:"foodExplain01-1",hotel2Image:"foodExplain01-2",hotel3Image:"foodExplain01-3",imageName: "food01",l1:"36.6440330",l2:"127.4248310"),
           Food(category:"한식",country: "한식", locality: "콩가내",hotelImage:"foodExplain02-1",hotel2Image:"foodExplain02-2",hotel3Image:"foodExplain02-3",imageName: "food02",l1:"36.6676080",l2:"127.4744350"),
           Food(category:"한식",country: "한식", locality: "장안수제숯불갈비",hotelImage:"foodExplain03-1",hotel2Image:"foodExplain03-2",hotel3Image:"foodExplain03-3",imageName: "food03",l1:"36.6688390",l2:"127.4814300"),
           Food(category:"한식",country: "한식", locality: "오로지김치찌개돼지불고기",hotelImage:"foodExplain04-1",hotel2Image:"foodExplain04-2",hotel3Image:"foodExplain04-3",imageName: "food04",l1:"36.6514180",l2:"127.4934900"),
           Food(category:"한식",country: "한식", locality: "대관령목장",hotelImage:"foodExplain05-1",hotel2Image:"foodExplain05-2",hotel3Image:"foodExplain05-3",imageName: "food05",l1:"36.6587900",l2:"127.4567470"),
           Food(category:"한식",country: "한식", locality: "해오름",hotelImage:"foodExplain06-1",hotel2Image:"foodExplain06-2",hotel3Image:"foodExplain06-3",imageName: "food06",l1:"36.7166320",l2:"127.4313360"),
           Food(category:"한식",country: "한식", locality: "함지박소머리국밥",hotelImage:"foodExplain07-1",hotel2Image:"foodExplain07-2",hotel3Image:"foodExplain07-3",imageName: "food07",l1:"36.7156030",l2:"127.4298680"),
           Food(category:"한식",country: "한식", locality: "사또가든",hotelImage:"foodExplain08-1",hotel2Image:"foodExplain08-2",hotel3Image:"foodExplain08-3",imageName: "food08",l1:"36.7156030",l2:"127.3889820"),
           Food(category:"중식",country: "중식", locality: "중화요리 호수",hotelImage:"foodExplain09-1",hotel2Image:"pre",hotel3Image:"pre",imageName: "food09",l1:"36.7087860",l2:"127.4158400"),
           Food(category:"중식",country: "중식", locality: "이비가짬뽕",hotelImage:"foodExplain10-1",hotel2Image:"foodExplain10-2",hotel3Image:"foodExplain10-3",imageName: "food10",l1:"36.7087860",l2:"127.4158400"),
           Food(category:"중식",country: "중식", locality: "상하이객잔용암점",hotelImage:"foodExplain11-1",hotel2Image:"foodExplain11-2",hotel3Image:"pre",imageName: "food11",l1:"36.6094660",l2:"127.5047230"),
           Food(category:"중식",country: "중식", locality: "반객",hotelImage:"foodExplain12-1",hotel2Image:"foodExplain12-2",hotel3Image:"foodExplain12-3",imageName: "food12",l1:"36.6120690",l2:"127.4519720"),
           Food(category:"중식",country: "중식", locality: "대왕성",hotelImage:"foodExplain13-1",hotel2Image:"foodExplain13-2",hotel3Image:"foodExplain13-3",imageName: "food13",l1:"36.5176550",l2:"127.4999610"),
           Food(category:"일식",country: "일식", locality: "쿠우쿠우 청주점",hotelImage:"foodExplain14-1",hotel2Image:"foodExplain14-2",hotel3Image:"foodExplain14-3",imageName: "food14",l1:"36.6324450",l2:"127.4889660"),
           Food(category:"일식",country: "일식", locality: "미사이 참치",hotelImage:"foodExplain15-1",hotel2Image:"foodExplain15-2",hotel3Image:"foodExplain15-3",imageName: "food15",l1:"36.6324450",l2:"127.4889660"),
           Food(category:"일식",country: "일식", locality: "코노미일식",hotelImage:"foodExplain17-1",hotel2Image:"foodExplain17-2",hotel3Image:"foodExplain17-3",imageName: "food17",l1:"36.6494710",l2:"127.4592500"),
           Food(category:"일식",country: "일식", locality: "청해수산",hotelImage:"foodExplain18-1",hotel2Image:"foodExplain18-2",hotel3Image:"foodExplain18-3",imageName: "food18",l1:"36.6379600",l2:"127.4598160"),
           Food(category:"일식",country: "일식", locality: "아노참치",hotelImage:"foodExplain19-1",hotel2Image:"foodExplain19-2",hotel3Image:"foodExplain19-3",imageName: "food19",l1:"36.6118540",l2:"127.4670040"),
           Food(category:"양식",country: "양식", locality: "트리제이더테라스",hotelImage:"foodExplain20-1",hotel2Image:"foodExplain20-2",hotel3Image:"foodExplain20-3",imageName: "food20",l1:"36.6075830",l2:"127.4711140"),
           Food(category:"양식",country: "양식", locality: "아웃백 가경점",hotelImage:"foodExplain21-1",hotel2Image:"foodExplain21-2",hotel3Image:"foodExplain21-3",imageName: "food21",l1:"36.6234190",l2:"127.4324230"),
           Food(category:"양식",country: "양식", locality: "어반테이블패밀리레스토랑",hotelImage:"foodExplain22-1",hotel2Image:"foodExplain22-2",hotel3Image:"foodExplain22-3",imageName: "food22",l1:"36.6220310",l2:"127.4258440"),
           Food(category:"양식",country: "양식", locality: "돈까스클럽 분평점",hotelImage:"foodExplain23-1",hotel2Image:"foodExplain23-2",hotel3Image:"foodExplain23-3",imageName: "food23",l1:"36.6084380",l2:"127.4884190"),
           Food(category:"양식",country: "양식", locality: "돈까스클럽 분평점",hotelImage:"foodExplain23-1",hotel2Image:"foodExplain23-2",hotel3Image:"foodExplain23-3",imageName: "food23",l1:"36.6084380",l2:"127.4884190"),
           Food(category:"양식",country: "양식", locality: " 한국피자헛충북대2호점",hotelImage:"foodExplain24-1",hotel2Image:"foodExplain24-2",hotel3Image:"foodExplain24-3",imageName: "food24",l1:"36.6343540",l2:"127.4559300"),
        ]
    }
}
