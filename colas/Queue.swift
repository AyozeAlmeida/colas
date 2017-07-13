//
//  Queue.swift
//  colas
//
//  Created by Loquat Solutions on 13/7/17.
//  Copyright © 2017 MHP. All rights reserved.
//

import Foundation



class QNode<Int> {
    var key: Int?
    var next: QNode?
}



public class Queue<Int> {
    
    var top : QNode<Int>? = nil
    
    
    //enqueue the specified object
    func enQueue(key: Int) {
        
        //check for the instance
        if (top == nil) {
            top = QNode<Int>()
        }
        
        //establish the top node
        if (top?.key == nil) {
            top?.key = key
            return
        }
        
        let childToUse: QNode<Int> = QNode<Int>()
        var current: QNode = top!
        
        //cycle through the list
        while (current.next != nil) {
            current = current.next!
        }
        
        //append a new item
        childToUse.key = key
        current.next = childToUse
        
    }
    
    
    
    
    func deQueue() -> Int? {
        
        //determine if the key or instance exists
        let topitem: Int? = self.top?.key
        
        if (topitem == nil) {
            return nil
        }
        
        //retrieve and queue the next item
        var queueitem: Int? = top?.key!
        
        
        //use optional binding
        if let nextitem = top?.next {
            top = nextitem
        }
        else {
            top = nil
        }
        
        return queueitem
    }
    
    
    
    
}
