//
//  Batter.swift
//  ParsingComplexJSON
//
//  Created by Chaudhary Himanshu Raj on 24/01/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import Foundation

struct Batter {
    
    let id: String
    let type: String
    
    init?(json: JSON) {
        guard let id = json["id"] as? String,
            let type = json["type"] as? String
            else { return nil }
        
        self.id = id
        self.type = type
        
    }
}
