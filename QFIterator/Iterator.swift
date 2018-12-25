//
//  Iterator.swift
//  QFIterator
//
//  Created by 情风 on 2018/12/25.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/// 迭代器 抽象类
class Iterator: NSObject {
    func first() -> NSObject? {
        return nil
    }
    
    func next() -> NSObject? {
        return nil
    }
    
    func isDode() -> Bool {
        return false
    }
    
    func currentItem() -> NSObject? {
        return nil
    }
}
