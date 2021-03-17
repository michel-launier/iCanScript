//
//  Node.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-15.
//

import Foundation

class FunctionNode: Codable {
    var label: String                   // The user visible label
    let fullyQualifiedSignature: String // The fully qualified signature of the function
    let ports: [FunctionPort]
    
}

