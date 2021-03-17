//
//  Port.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-15.
//

import Foundation

enum PortDirection: Int, Codable {
    case In
    case Out
}

enum PortType: Int, Codable {
    case Parameter
}

class Port {
    var label:      String               // User visible label
    let name:       String               // Function parameter name
    let direction:  PortDirection        // Input/Output port specification
    
    init(parameterName: String,
         direction: PortDirection,
         label: String? = nil) {
        self.label         = label ?? parameterName
        self.name          = parameterName
        self.direction     = direction
    }
}

class FunctionPort: Port {
    let qualifiedType: FullyQualifiedType   // The programatic type of the port
    var defaultValue: String?               // Default value for port
    
    init(parameterName: String,
         direction: PortDirection,
         qualifiedType: FullyQualifiedType,
         label: String? = nil,
         defaultValue: String?) {
        self.qualifiedType = qualifiedType
        self.defaultValue  = defaultValue
        super.init(parameterName: parameterName, direction: direction, label: label)
    }
}
