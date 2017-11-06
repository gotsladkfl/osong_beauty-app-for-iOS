//
//  ControllersProvider.swift
//  ColorMatchTabs
//
//  Created by anna on 6/15/16.
//  Copyright © 2016 Yalantis. All rights reserved.
//

import UIKit
import ColorMatchTabs

class StubContentViewControllersProvider {
    
    
    static let viewControllers: [UIViewController] = {
        
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") 
       let boothController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BoothController")
        
        
        
        let chatController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Welcome")
    

        let lastController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "fInfoViewController")
        
        
        // 구현할 4가지 기능 컨트롤러
        return [viewController, boothController, chatController,lastController]
    }()

    
  
    
    
}
