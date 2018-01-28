//
//  ItemResponse.swift
//  ParsingComplexJSON
//
//  Created by Chaudhary Himanshu Raj on 23/01/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import Foundation

struct ItemResponse {
    
    let items: [Item]
    
    
    init?(json: JSON) {
        guard let items = json["items"] as? JSON else { return nil }
        guard let itemArray = items["item"] as? [JSON] else { return nil }
        let itemObjects = itemArray.map({ Item(json: $0)! })
        self.items = itemObjects
    }
}
