//
//  Aggregate.swift
//  QFIterator
//
//  Created by 情风 on 2018/12/25.
//  Copyright © 2018 qingfengiOS. All rights reserved.
//

import UIKit

/// 聚集抽象类
class Aggregate: NSObject {
    func createIterator() -> Iterator {
        return Iterator()
    }
}
