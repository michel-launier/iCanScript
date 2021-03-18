//
//  Index.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-18.
//

import Foundation

struct Index {
    
    var objectType = ObjectType.Unknown
    var index: Int = 0

    enum ObjectType {
        case Unknown    // Index entry not defined
        case Node       // This index is for a node
        case Port       // This index if for a port
    }

    var isValid: Bool {
        return objectType != ObjectType.Unknown
    }
    var isNode: Bool {
        return objectType == ObjectType.Node
    }
    var isPort: Bool {
        return objectType == ObjectType.Port
    }
    
    func getNode() -> Node? {
        guard isNode else {
            return nil
        }
        
    }
}
