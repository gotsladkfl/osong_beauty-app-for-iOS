//
//  ViewController.swift
//  pageSample
//
//  Created by woong on 2016. 3. 28..
//  Copyright © 2016년 handstudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPageViewControllerDataSource {

    var pageViewController : UIPageViewController!
    var pageTitles : NSArray!
    var pageImages : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pageTitles = NSArray(objects: "" , "", "" , "", "","")
        self.pageImages = NSArray(objects: "b1-1" , "b1-2" , "b1-3" , "b1-4" , "b1-5","b1-6")
        
        self.pageViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageViewController") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        let startVC = self.viewControllerAtIndex(0) as ContentViewController
        let viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as? [UIViewController] , direction: .forward, animated: true, completion: nil)
        self.pageViewController.view.frame = CGRect(x: 0,y: 30,width: self.view.frame.width, height: self.view.frame.height - 100)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        
    }
    
    
    /**
    * viewPageController 구성 함수
    */
    func viewControllerAtIndex (_ index : Int) -> ContentViewController {
        
        let vc : ContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
        
        vc.pageIndex = index
        vc.imageFile = self.pageImages[index] as! String
        vc.titleText = self.pageTitles[index] as! String
        
        print(">>> : " ,vc.titleText)
        
        return vc
    }
    
    
    
    /**
    * 이전 ViewPageController 구성
    */
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! ContentViewController
        var index = vc.pageIndex as Int

        if( index == 0 || index == NSNotFound) {
            return nil
        }
        
        index -= 1
        
        return self.viewControllerAtIndex(index)
    }
    
    
    /**
    * 이후 ViewPageController 구성
    */
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let vc = viewController as! ContentViewController
        
        var index = vc.pageIndex as Int
        
        if( index == NSNotFound) {
            return nil
        }
        
        index += 1
        
        if (index == self.pageImages.count) {
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    
    /**
    * 인디케이터의 총 갯수
    */
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return self.pageImages.count
    }
    
    
    /**
    * 인디케이터의 시작 포지션
    */
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }

}

