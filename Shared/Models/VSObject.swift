//
//  VSObject.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-26.
//

import Foundation

class VSObject: Codable {
    var parentIdx: Int?
    var name: String
    
    init(name: String, parentIdx: Int?) {
        self.name      = name
        self.parentIdx = parentIdx
    }
}

struct VSObjectRef {
    var objectRef: VSObject?
    var uuid:      UUID?

    
}

