//
//  Batters.swift
//  ParsingComplexJSON
//
//  Created by Chaudhary Himanshu Raj on 24/01/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import Foundation

struct Batters {
    
    let batters: [Batter]
    
    init?(json: JSON) {
        guard let batterJSON = json["batter"] as? [JSON] else { return nil }
        let batters = batterJSON.map({ Batter(json: $0)! })
        self.batters = batters
    }
}
