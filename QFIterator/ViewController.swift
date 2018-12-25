//
//  ViewController.swift
//  QFIterator
//
//  Created by 情风 on 2018/12/25.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit


/**
 迭代器模式:提供一种方法顺序访问一个聚合对象中的各个元素，而又不暴露该对象的内部表示。
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let aggregate: ConcreteAggregate = ConcreteAggregate()
        aggregate.addItem("乘客1")
        aggregate.addItem("乘客2")
        aggregate.addItem("乘客3")
        aggregate.addItem("乘客4")
        aggregate.addItem("乘客5")
    
        let iterator: Iterator = ConcreteIterator(aggregate)
        print("第一个元素：\(iterator.first() as Any)")
        while !iterator.isDode() {
            print("\(String(describing: iterator.currentItem()))买票")
            _ = iterator.next()
        }
        
        print("\n----------正向/逆向迭代器分割线-------------\n")
        
        let iteratorDesc: Iterator = ConcreteIteratorDesc(aggregate)
        print("第一个元素：\(iteratorDesc.first() as Any)")
        while !iteratorDesc.isDode() {
            print("\(String(describing: iteratorDesc.currentItem()))买票")
            _ = iteratorDesc.next()
        }
        
    }
    
}

