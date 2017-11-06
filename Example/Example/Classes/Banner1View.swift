//
//  BannerView.swift
//  bannerDemo
//
//  Created by Alan Roldán Maillo on 24/6/16.
//  Copyright © 2016 Alan Roldán Maillo. All rights reserved.
//

import Foundation
import UIKit

class Banner1View: UIView
{
    private var aspectWidth = CGFloat()
    private var aspectHeight = CGFloat()
    private var dragging = Bool()
    private var moving = Bool()
    private var oldX = CGFloat()
    private var list = LinkedList()
    private var currentImage = UIImageView()
    private var nextImage = UIImageView()
    private var backImage = UIImageView()
    private var auxImage = UIImageView()
    private var images = [UIImageView]()
    private var timer = Timer()
    
    /*
     * This function is a constructor for declarate the ASCustomBannerView
     * params: imagesArray: image's array that compose this banner
     */
    func createBanner(imagesArray:[UIImage])
    {
        assert(imagesArray.count > 0, "Invalid Array Size")
        
        self.bannerView()
        let noneArray = [Any]()
        self.createImageList(imagesArray: imagesArray,urlArray:noneArray)
        
        timer = Timer.scheduledTimer(timeInterval: 7, target: self, selector: #selector(self.actionAutoSlide), userInfo: nil, repeats: true)
    }
    
    /*
     * This function is a constructor for declarate the ASCustomBannerView
     * params: imagesArray: image's array that compose this banner
     * params: urlArray: List of links url
     */
    func createBanner(imagesArray:[UIImage],urlArray:[Any])
    {
        assert(imagesArray.count > 0, "Invalid Array Size")
        assert(urlArray.count == imagesArray.count, "The size of the two lists must be the same")
        
        self.bannerView()
        self.createImageList(imagesArray: imagesArray, urlArray:urlArray)
        
        timer = Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(BannerView.actionAutoSlide), userInfo: nil, repeats: true)
    }
    
    /*
     * This function is for generating the view
     */
    func bannerView()
    {
        let widthScreen:CGFloat = UIScreen.main.bounds.width
        if widthScreen > 415
        {
            self.aspectWidth = 415
        }
        else
        {
            self.aspectWidth = widthScreen
        }
        
        self.aspectHeight = self.aspectWidth
        self.dragging = false
        self.moving = false
        self.backgroundColor = UIColor.clear
    }
    
    /*
     * This function is for refresh the params of the view
     * params: imagesArray: image's array that compose this banner
     */
    func refreshBanner(imagesArray:[UIImage])
    {
        list.removeAll()
        let noneArray = [Any]()
        self.restartImageView(imagesArray: imagesArray, urlArray: noneArray)
    }
    
    /*
     * This function is for refresh the params of the view
     * params: imagesArray: image's array that compose this banner
     * params: urlArray: List of links url
     */
    func refreshBanner(imagesArray:[UIImage],urlArray:[Any])
    {
        list.removeAll()
        self.restartImageView(imagesArray: imagesArray, urlArray: urlArray)
    }
    
    /*
     * This function is a controller to change images of the view
     * params: imagesArray: image's array that compose this banner
     * params: urlArray: List of links url
     */
    func restartImageView(imagesArray:[UIImage],urlArray:[Any])
    {
        if urlArray.isEmpty
        {
            for i in 0 ... imagesArray.count-1
            {
                list.insert(image: imagesArray[i])
            }
        }
        else
        {
            for i in 0 ... imagesArray.count-1
            {
                if let url = urlArray[i] as? String
                {
                    list.insert(image: imagesArray[i], url: url)
                }
                else
                {
                    list.insert(image: imagesArray[i])
                }
            }
        }
        
        for i in 0 ... 4
        {
            switch i {
            case 0:
                self.images[i].image = self.list.getBeforePrevious().getImage().image
                break
            case 1:
                self.images[i].image = self.list.getPrevious().getImage().image
                break
            case 2:
                self.images[i].image = self.list.getCurrent().getImage().image
                break
            case 3:
                self.images[i].image = self.list.getRear().getImage().image
                break
            case 4:
                self.images[i].image = self.list.getAfterRear().getImage().image
                break
            default:
                break
            }
        }
    }
    
    /*
     * This function is for generating the diferent images for the banner
     */
    private func createImageList(imagesArray:[UIImage], urlArray:[Any])
    {
        
        if urlArray.isEmpty
        {
            for i in 0 ... imagesArray.count-1
            {
                list.insert(image: imagesArray[i])
            }
        }
        else
        {
            for i in 0 ... imagesArray.count-1
            {
                if let url = urlArray[i] as? String
                {
                    list.insert(image: imagesArray[i],url:url)
                }
                else
                {
                    list.insert(image: imagesArray[i])
                }
            }
        }
        
        for i in 0 ... 4
        {
            let imagen = UIImageView()
            switch i {
            case 0:
                imagen.image = self.list.getBeforePrevious().getImage().image
                break
            case 1:
                imagen.image = self.list.getPrevious().getImage().image
                break
            case 2:
                imagen.image = self.list.getCurrent().getImage().image
                break
            case 3:
                imagen.image = self.list.getRear().getImage().image
                break
            case 4:
                imagen.image = self.list.getAfterRear().getImage().image
                break
            default:
                break
            }
            
            // let gesture = UITapGestureRecognizer(target: self, action: #selector(self.tapImageAction))
            // imagen.addGestureRecognizer(gesture)
            //imagen.isUserInteractionEnabled = true
            self.images.append(imagen)
            let initX = getInitX()+(self.aspectWidth*CGFloat(-2+i))
            self.images[i].frame = CGRect(x: initX, y: 0, width: self.aspectWidth, height: self.aspectHeight)
            self.addSubview(images[i])
        }
    }
    
    /*
     * Override layoutSubviews: for refresh the banner on rotating the screen
     */
    override func layoutSubviews(){
        super.layoutSubviews()
        
        if list.getSize()>0
        {
            if UIDevice.current.orientation.isLandscape
            {
                for i in 0 ... 4
                {
                    self.images[i].frame.origin.x += getInitX()
                }
            }
            else
            {
                let inicio = self.images[2].frame.origin.x
                for i in 0 ... 4
                {
                    self.images[i].frame.origin.x -= inicio
                }
            }
        }
    }
    
    /*
     * Override touchesBegan: for process the touches
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        print("touchesBegan")
        if !dragging && !moving
        {
            self.dragging = true
            let position :CGPoint = touches.first!.location(in: self)
            self.oldX = position.x
        }
    }
    
    /*
     * Override touchesMoved: for process the moved
     */
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        print("touchesMoved")
        let position :CGPoint = touches.first!.location(in: self)
        
        let centerInit = getInitX()
        
        if dragging && !moving
        {
            self.images[2].frame.origin.x = position.x - oldX + centerInit
            for i in 0 ... 4
            {
                if i != 2
                {
                    self.images[i].frame.origin.x = self.images[2].frame.origin.x+(self.aspectWidth*CGFloat(-2+i))
                }
            }
        }
    }
    
    /*
     * Override touchesBegan: for process the ended touch
     */
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        print("touchesEnded")
        if dragging && !moving
        {
            let centerInit = getInitX()
            
            if self.images[2].frame.origin.x < centerInit-self.aspectWidth/2
            {
                self.moveToLeft()
            }
            else if self.images[2].frame.origin.x < centerInit
            {
                self.moveToBack()
            }
                
            else if self.images[2].frame.origin.x > centerInit+self.aspectWidth/2
            {
                self.moveToRight()
            }
            else if self.images[2].frame.origin.x > centerInit
            {
                self.moveToBack()
            }
            else
            {
                self.dragging = false
            }
        }
    }
    
    /*
     * This function runs every 8 seconds.
     * Slides the images to the left automatically.
     */
    func actionAutoSlide()
    {
        print("actionAutoSlide")
        if !dragging
        {
            self.moveToLeft()
        }
    }
    
    /*
     * This function is called when touching an image
     * Opens image link
     */
    func tapImageAction()
    {
        print("tapImageAction")
        
        if self.oldX < self.images[2].frame.origin.x
        {
            /*
             * Pressed the left-of-current image
             * Move left image to center
             */
            self.moveToRight()
        }
        else if self.oldX > self.images[2].frame.origin.x + self.images[2].frame.size.width
        {
            /*
             * Pressed the right-of-current image
             * Move right image to center
             */
            self.moveToLeft()
        }
        else if !self.list.getCurrent().getURL().isEmpty
        {
            //Open URL of current image
            UIApplication.shared.openURL(URL(string: self.list.getCurrent().getURL())!)
            self.dragging = false
        }
    }
    
    /*
     * This function controls the animation of the rebound effect
     */
    private func resetImages()
    {
        
        for i in 0 ... 4
        {
            switch i {
            case 0:
                self.images[i].image = self.list.getBeforePrevious().getImage().image
                break
            case 1:
                self.images[i].image = self.list.getPrevious().getImage().image
                break
            case 2:
                self.images[i].image = self.list.getCurrent().getImage().image
                break
            case 3:
                self.images[i].image = self.list.getRear().getImage().image
                break
            case 4:
                self.images[i].image = self.list.getAfterRear().getImage().image
                break
            default:
                break
            }
            let initX = getInitX()+(self.aspectWidth*CGFloat(-2+i))
            self.images[i].frame.origin.x = initX
        }
    }
    
    /*
     * This function controls the animation of the shift to the left
     */
    private func moveToLeft()
    {
        print("movoToLeft")
        
        UIView.animate(withDuration: 0.25, delay: 0, options: UIViewAnimationOptions.beginFromCurrentState, animations:
            {
                for i in 0 ... 4
                {
                    let initX = self.getInitX()+(self.aspectWidth*CGFloat(-3+i))
                    self.images[i].frame.origin.x = initX
                }
        }) { _ in
            self.list.moveNext()
            self.resetImages()
            self.dragging = false
        }
    }
    
    /*
     * This function controls the animation of the shift to the right
     */
    private func moveToRight()
    {
        print("movoToRight")
        UIView.animate(withDuration: 0.25, delay: 0, options: UIViewAnimationOptions.beginFromCurrentState, animations:
            {
                for i in 0 ... 4
                {
                    let initX = self.getInitX()+(self.aspectWidth*CGFloat(-1+i))
                    self.images[i].frame.origin.x = initX
                }
        }) { _ in
            self.list.moveBack()
            self.resetImages()
            self.dragging = false
        }
    }
    /*
     * This function controls the animation of the shift to the back position
     */
    private func moveToBack()
    {
        print("movoToBack")
        
        UIView.animate(withDuration: 0.2, delay: 0, options: UIViewAnimationOptions.beginFromCurrentState, animations:
            {
                self.resetImages()
        }) { _ in
            self.dragging = false
        }
    }
    
    /*
     * This function places the image in the center of the screen
     */
    private func getInitX()->CGFloat
    {
        return UIScreen.main.bounds.width/2 - aspectWidth/2
    }
    
    /*
     * This function is used to obtain the total height of the Banner View
     */
    func getHeightSize()->CGFloat
    {
        return self.aspectHeight
    }
}
