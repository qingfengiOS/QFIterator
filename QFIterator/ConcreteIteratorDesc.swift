//
//  ConcreteIteratorDesc.swift
//  QFIterator
//
//  Created by 情风 on 2018/12/25.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit

class ConcreteIteratorDesc: Iterator {
    var aggregate: ConcreteAggregate
    var current: Int = 0
    
    init(_ aggregate: ConcreteAggregate) {
        self.aggregate = aggregate
        self.current = aggregate.count() - 1
    }
    
    override func first() -> NSObject? {
        return aggregate.items[aggregate.count() - 1]
    }
    
    override func next() -> NSObject? {
        var res: NSObject = NSObject();
        
        self.current -= 1;
        if current >= 0 {
            res = aggregate.items[current]
        }
        return res
    }
    
    override func isDode() -> Bool {
        return self.current < 0 ? true : false
    }
    
    override func currentItem() -> NSObject? {
        return self.aggregate.items[current]
    }
    
    
}
