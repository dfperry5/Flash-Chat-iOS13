//
//  Message.swift
//  Flash Chat iOS13
//
//  Created by Dylan Perry on 2/1/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct Message: Codable {
    let sender: String
    let body: String
    let date: TimeInterval
    
    init(dictionary: [String: Any]) throws {
        self = try JSONDecoder().decode(Message.self, from: JSONSerialization.data(withJSONObject: dictionary))
   }
}
