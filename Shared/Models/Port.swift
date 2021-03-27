//
//  Port.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-15.
//

import Foundation

enum PortDirection: Int, Codable {
    case Unknown
    case In
    case Out
    case InOut
}

class PortBase: Codable {
    let name:          String               // Function parameter name
    let direction:     PortDirection        // Input/Output port specification
    var label: String {                     // User defined label
        get { return _label ?? name }
        set { _label = value }
    }
    var _label:        String?              // Storage for user defined label
    var value:         FullyQualifiedValue? // Constant value for port
    var sourcingPort:  Port?                // Port that supplies the value
    
    init(name: String, direction: PortDirection) {
        self.name           = name
        self.direction      = direction
        self._label         = nil
        self.value          = nil
        self.sourcingPort   = nil
    }
}

enum PortType: Int, Codable {
    case Parameter
}

class Port: Codable {
    var label:         String?              // User visible label
    let name:          String               // Function parameter name
    let direction:     PortDirection        // Input/Output port specification
    var portType:      PortType             // Type of port
    let qualifiedType: FullyQualifiedType   // The programatic type of the port
    let defaultValue:  FullyQualifiedValue? // Default value for port
    var value:         FullyQualifiedValue? // Constant value for port
    var sourcingPort:  Port?                // Port that supplies the value
    let parameterIndex: Int?
    
    init(parameterName: String,
         direction:     PortDirection,
         portType:      PortType,
         qualifiedType: FullyQualifiedType,
         defaultValue:  FullyQualifiedValue?) {
        self.label          = nil
        self.name           = parameterName
        self.direction      = direction
        self.portType       = portType
        self.qualifiedType  = qualifiedType
        self.defaultValue   = defaultValue
        self.value          = nil
        self.sourcingPort   = nil
        self.parameterIndex = nil
    }

    // Brings back the port to it initial state
    func reset() {
        self.label = nil
        self.value = nil
        self.sourcingPort = nil
    }
    
    func getLabel() -> String {
        return label ?? name
    }
}
