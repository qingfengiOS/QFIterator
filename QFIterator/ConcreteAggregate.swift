//
//  ConcreteAggregate.swift
//  QFIterator
//
//  Created by 情风 on 2018/12/25.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 具体聚集类
class ConcreteAggregate: Aggregate {

    var items: [NSObject] = []
    
    override func createIterator() -> Iterator {
        return ConcreteIterator(self)
    }
    
    func count() -> Int {
        return self.items.count
    }
    
    func addItem(_ obj: Any) {
        self.items.append(obj as! NSObject)
    }
    
}
