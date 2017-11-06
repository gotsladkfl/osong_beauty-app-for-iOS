//
//  ImageItem.swift
//  bannerDemo
//
//  Created by Alan Roldán Maillo on 24/6/16.
//  Copyright © 2016 Alan Roldán Maillo. All rights reserved.
//

import Foundation
import UIKit

class ImageItem
{
    private var image : UIImageView!
    private var next : ImageItem!
    private var back : ImageItem!
    private var url : String!
    
    init()
    {
        
    }
    
    init(imagen:UIImage)
    {
        self.image = UIImageView(image: imagen)
        self.url = ""
    }
    
    init(imagen:UIImage, urln:String)
    {
        self.image = UIImageView(image: imagen)
        self.url = urln
    }
    
    init(imagen:UIImage, backn:ImageItem, nextn:ImageItem)
    {
        self.image = UIImageView(image: imagen)
        self.next = nextn
        self.back = backn
        self.url = ""
    }
    
    init(imagen:UIImage, backn:ImageItem, nextn:ImageItem, urln:String)
    {
        self.image = UIImageView(image: imagen)
        self.next = nextn
        self.back = backn
        self.url = urln
    }
    
    func getImage()->UIImageView
    {
        return self.image
    }
    
    func getURL()->String
    {
        return self.url
    }
    
    func getNext()->ImageItem
    {
        return self.next
    }
    
    func getBack()->ImageItem
    {
        return self.back
    }
    
    func setNext(siguiente:ImageItem)
    {
        self.next = siguiente
    }
    
    func setBack(anterior:ImageItem)
    {
        self.back = anterior
    }
    
}
