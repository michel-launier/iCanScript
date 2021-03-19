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
        case Unknown        // Unused index
        case Project        // References a project
        case Package        // References a package
        case Script         // References a visual script
        case Node           // References a node
        case Port           // References a port
    }

    var isValid: Bool   { return objectType != ObjectType.Unknown }
    var isProject: Bool { return objectType == ObjectType.Project }
    var isPackage: Bool { return objectType == ObjectType.Package }
    var isScript: Bool  { return objectType == ObjectType.Script }
    var isNode: Bool    { return objectType == ObjectType.Node }
    var isPort: Bool    { return objectType == ObjectType.Port }
}
