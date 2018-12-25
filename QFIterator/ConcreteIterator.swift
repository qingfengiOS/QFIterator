//
//  ConcreteIterator.swift
//  QFIterator
//
//  Created by 情风 on 2018/12/25.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 具体迭代器
class ConcreteIterator: Iterator {
    var aggregate: ConcreteAggregate
    var current: Int = 0
    
    init(_ aggregate: ConcreteAggregate) {
        self.aggregate = aggregate
    }
    
    override func first() -> NSObject? {
        return aggregate.items[0]
    }
    
    override func next() -> NSObject? {
        var res: NSObject = NSObject();
        
        self.current += 1;
        if current < aggregate.items.count {
            res = aggregate.items[current]
        }
        return res
    }
    
    override func isDode() -> Bool {
        return self.current >= aggregate.count() ? true : false
    }
    
    override func currentItem() -> NSObject? {
        return self.aggregate.items[current]
    }
    
}
