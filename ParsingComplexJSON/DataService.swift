//
//  DataService.swift
//  ParsingComplexJSON
//
//  Created by Chaudhary Himanshu Raj on 19/01/18.
//  Copyright © 2018 Chaudhary Himanshu Raj. All rights reserved.
//

import Foundation

class DataService {
    
    // Making it a Singleton
    private init() {}
    static let shared = DataService()
    
    func getData(completion: (Data) -> Void) {
        guard let path = Bundle.main.path(forResource: "ComplexJSON", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            completion(data)
        } catch {
            print(error)
        }
    }
}
