//
//  ImageItem.swift
//  bannerDemo
//
//  Created by Alan Roldán Maillo on 24/6/16.
//  Copyright © 2016 Alan Roldán Maillo. All rights reserved.
//

import Foundation
import UIKit

class LinkedList
{
    private var current = ImageItem()
    private var tail  = ImageItem()
    private var head = ImageItem()
    private var size = 0
    
    func getCurrent()->ImageItem
    {
        return current
    }
    
    func getPrevious()->ImageItem
    {
        return current.getBack()
    }
    
    func getRear()->ImageItem
    {
        return current.getNext()
    }
    
    func getAfterRear()->ImageItem
    {
        return current.getNext().getNext()
    }
    
    func getBeforePrevious()->ImageItem
    {
        return current.getBack().getBack()
    }
    
    func getSize()->Int
    {
        return self.size
    }
    
    func moveNext()
    {
        let aux = ImageItem(imagen: self.current.getImage().image!, backn: self.current.getBack(), nextn: self.current.getNext())
        self.current = aux.getNext()
    }
    
    func moveBack()
    {
        let aux = ImageItem(imagen: self.current.getImage().image!, backn: self.current.getBack(), nextn: self.current.getNext())
        self.current = aux.getBack()
    }
    
    func insert(image:UIImage)
    {
        let newNode = ImageItem(imagen: image)
        if size == 0
        {
            newNode.setNext(siguiente: newNode)
            newNode.setBack(anterior: newNode)
            self.current = newNode
            self.tail = newNode
            self.head = newNode
            size+=1
        }
        else
        {
            newNode.setNext(siguiente: self.head)
            newNode.setBack(anterior: self.tail)
            self.tail.setNext(siguiente: newNode)
            self.tail = newNode
            self.head.setBack(anterior: self.tail)
            size+=1
        }
    }
    
    func insert(image:UIImage, url:String)
    {
        let newNode = ImageItem(imagen: image, urln: url)
        if size == 0
        {
            newNode.setNext(siguiente: newNode)
            newNode.setBack(anterior: newNode)
            self.current = newNode
            self.tail = newNode
            self.head = newNode
            size+=1
        }
        else
        {
            newNode.setNext(siguiente: self.head)
            newNode.setBack(anterior: self.tail)
            self.tail.setNext(siguiente: newNode)
            self.tail = newNode
            self.head.setBack(anterior: self.tail)
            size+=1
        }
    }
    
    func removeAll()
    {
        self.size = 0
    }
}
