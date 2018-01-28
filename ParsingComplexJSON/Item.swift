//
//  Item.swift
//  ParsingComplexJSON
//
//  Created by Chaudhary Himanshu Raj on 24/01/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import Foundation

struct Item {
    
    let batters: Batters
    
    init?(json: JSON) {
        guard let battersJSON = json["batters"] as? JSON else { return nil }
        self.batters = Batters(json: battersJSON)!
    }
}
