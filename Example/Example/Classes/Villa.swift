//
//  Villa.swift
//  ElongationPreview
//
//  Created by Abdurahim Jauzee on 09/02/2017.
//  Copyright © 2017 Ramotion. All rights reserved.
//

import Foundation


struct Villa {
    let category: String
  let country: String
  let locality: String
  let description: String
  let title: String
  let imageName: String
    let bottomImg:String
    let img1Name:String
    let img2Name:String
    let img3Name:String
    
    
    init(category: String,country: String, locality: String, description: String, title: String, imageName: String,bottomImg: String,img1Name: String,img2Name:String,img3Name: String)
    {
    self.category = category
        self.country = country
    self.locality = locality
    self.description = description
    self.title = title
    self.imageName = imageName
        self.bottomImg = bottomImg
        self.img1Name = img1Name
        self.img2Name = img2Name
        self.img3Name = img3Name
  }
  
    
}





extension Villa {
  static var testData: [Villa] {
    return [
        Villa(category:"기업관",country: "A01", locality: "파이온텍(주)", description: "* 에스테틱과 피부 과학의 만남, SKIN Do \n \n    * R&D 연구를 바탕으로 한 더모 코스메틱, PIODERM \n \n * 오염된 피부를 위한 그린 레벨, Union of Nature ", title: "제품소개", imageName: "LOGOA01",bottomImg:"A01",img1Name:"A01-1",img2Name:"A01-2",img3Name:"A01-3"),
        Villa(category:"기업관",country: "A02", locality: "네이처셀(주)", description: "줄기세포기술과 나노기술, 천연물. 스크리닝기술이 결합하여 국내 유일하게 개발된 원료로 인체지방세포배양액 추출물이 뿜어내는 단백질 성장인자들이 피 부속 어린 세포를 깨워줍니다. 특히 나노 다이아몬드가 함유되어 보석처럼 빛나는 피부 로 만들어주며, 항산화 작용을 하는 흰무니 엉겅퀴 추출물의 실리마린 성분이 건강한 피부를 가꿔 줍니다.", title: "제품소개", imageName: "LOGOA02",bottomImg:"A02",img1Name:"A02-1",img2Name:"pre",img3Name:"pre"),
        Villa(category:"기업관",country: "A03", locality: "(주)한국에스큐아이", description: "2007년 IFRC는 세계 할랄 위원회 회원으로 등록되어있습니다.말레이시아는 할랄 인증을 정부에 의해 제어하는 유일한 국가로 서, 할랄 인증으로 이슬람 개발 말레이시아(이하, JAKIM)의 부 서를지정하여시행하고있어그결과,IFRC는주로중국및아 시아 지역의 외국 기업을 대상으로 시장을 넓히고 있습니다.", title: "제품소개", imageName: "LOGOA03",bottomImg:"A03",img1Name:"pre",img2Name:"pre",img3Name:"pre"),
        Villa(category:"마켓관",country: "D01", locality: "주식회사 에디쁘", description: "1.에디쁘 트리트먼트 - 모발의 외부를 코팅하여 모발에 윤기와 탄력을 주며, 흰머리 천연염색 효과 .\n2.에디쁘 샴푸 - 모발손상 방지에 도움을 주며 두피를 청결하게 유지시키고, 비듬이나 가려움 완화에 도움을 줍니다.\n3.에디쁘 쁘띠 - 토르말린 파우더를 첨가해서 만든 둥근 마사지 빗으로 두피세포의 신진대사를 원활하게 도와줍니다.", title: "제품소개", imageName: "LOGOD01",bottomImg:"D01",img1Name:"D01-1",img2Name:"D01-2",img3Name:"D01-3"),
        Villa(category:"마켓관",country: "D02", locality: "(주)에코힐링", description: "따스한 햇빛을 받고 자란 천연 허브 워터와 여러 가지 추출물, 천연 아로마 오일이 함유되어 있어 피부를 더욱 생기있고 건강하게 만들어 드립니다.\n 계절별 기초화장품 라인과 다양한 아로마 오일을 블랜딩한 아로마 오일 제품들이 피부에 수분과 영양을 공급하여 거칠어짐 등 피부 손상을 예방하고 살결을 매끄럽고 윤기 있게 가꾸어드립니다.", title: "제품소개", imageName: "LOGOD02",bottomImg:"D02",img1Name:"D02-1",img2Name:"D02-2",img3Name:"pre"),
        Villa(category:"마켓관",country: "D03", locality: "제이앤지코스메틱 (주)", description: "미백과 주름개선 기능성 원료에 산뜻한 발림성, 끈적이지 않는 내용물에 골드 및 달팽이 추출물을 첨가하여 피부영양 및 보습 까지 한번에 케어하는 제품을 이번에 론칭하였다. 특히 한국과 중국의 30-40대를 겨냥하여 화려한 패키지 디자인에 본사 마 진을 최소화한 경쟁력있는 공급가격으로 인해 소비자와 판매점 까지 동시에 만족을 하는 수익공유 가격구조를 결합하여, 지속 력있는 화장품 브랜드를 개발하였다.", title: "제품소개", imageName: "LOGOD03",bottomImg:"D03",img1Name:"D03-1",img2Name:"pre",img3Name:"pre"),
        Villa(category:"뷰티마켓관",country: "E04", locality: "팜스 B&B", description: "완벽한 토탈 모이스춰 솔루션 with Blue Complex TM 모이스 춰라이저+앰플+크림->3in1효과 \n PAMS Water Drop Blue Solution 3 in 1 -Ampule Gel Cream 팜스워터드롭블루솔루션3인1 –앰플젤크림", title: "제품소개", imageName: "LOGOE04",bottomImg:"E04",img1Name:"E04-1",img2Name:"E04-2",img3Name:"E04-3"),
        Villa(category:"뷰티마켓관",country: "E05", locality: "휴먼피아코스텍 (주)", description: "당사 제품은 1회용 마스크팩으로 이용이 간단하고 피부의 청정과 수렴,수분공급까지한번에해결할수있는제품으로가격도저 렴하고 고객만족도도 매우 우수한 제품입니다.\n 러스 마스크팩은 장당 200원 미만의 저렴한 가격대로 피부 미용 에 대한 고객의 욕구를 해소시킬 수 있는 제품입니다.", title: "제품소개", imageName: "LOGOE05",bottomImg:"E05",img1Name:"E05-1",img2Name:"E05-2",img3Name:"E05-3"),
        Villa(category:"뷰티마켓관",country: "E06", locality: "이화코리아", description: "드보세르 화장품은 ‘미(美)’을 뜻하는 ‘BEAUTE’와 스페인어로 ‘태어남, 탄생’을 의미하는 ‘NACER’을 합성한 것으로,‘여성에 게 새롭고 경이로운 아름다움을 선사한다’는 의미를 가지고 있습 니다. 드보세르는 유효 성분을 효과적으로 전달할 수 있는 리포 좀하이테크공법으로유효성분을더많이더빠르게더깊숙이 전달하여 피부에 놀라운 탄력과 젊음의 에너지를 선사합니다. ", title: "제품소개", imageName: "LOGOE06",bottomImg:"E06",img1Name:"E06-1",img2Name:"E06-2",img3Name:"E06-3"),
        Villa(category:"비지니스관",country: "B01", locality: "셀트리온스킨큐어", description: "셀큐어 듀오비타펩 얼티밋 크림 - 핵심 성분인 듀오비타펩(Duo-VitaPepTM)의 탁월한 피부개선 효과로 다양한 피부 고민을 케어 해주는 크림\n 셀트리온 신기술의 기능성 효과 - 단일 성분으로 미백, 주름 개선을 동시에 실현 시켜주는 이중 기능성 듀오비타펩", title: "제품소개", imageName: "LOGOB01",bottomImg:"B01",img1Name:"B01-1",img2Name:"B01-2",img3Name:"B01-3"),
        Villa(category:"비지니스관",country: "B02", locality: "(주)씨유스킨", description: "내추럴 브라이트닝 비비 쿠션팩트 (SPF35 / PA+++)\n탄산수, 프로폴리스추출물, 연꽃추출물이 피부를 촉촉하게 케어 하면서 잡티를 커버하고 피부에 착 밀착되는 텍스처로 오랜시간 밝은 피부톤으로 유지시켜주는 비비 쿠션팩트", title: "제품소개", imageName: "LOGOB02",bottomImg:"B02",img1Name:"B02-1",img2Name:"B02-2",img3Name:"B02-3"),
        Villa(category:"비지니스관",country: "B02", locality: "(주)코스메카코리아", description: "(주)코스메카코리아는 OEM/ODM/OGM 업체로서 주문자가 요 구하는 제품과 상표명으로 완제품을 생산하고 있습니다. 기초 화장품,색조화장품,기능성화장품,의약외품,남성및유아화 장품 등 다양한 제품군을 취급하고 있습니다. 특히, BB크림을 한국 최초로 개발하여 BB크림 열풍을 선도한 바 있습니다.", title: "제품소개", imageName: "LOGOB03",bottomImg:"B03",img1Name:"B03-1",img2Name:"B03-2",img3Name:"B03-3"),

        
    ]
  }
}
