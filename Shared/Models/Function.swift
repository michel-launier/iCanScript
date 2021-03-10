//
//  Function.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-10.
//

import Foundation

enum FunctionParameterType: Int, Codable {
    case In
    case Out
    case InOut
}

struct FunctionInput: Codable {
    var name: String
    let label: String
    let type: String
    let order: Int
    let direction: FunctionParameterType
    let defaultValue: String
}

struct FunctionOutput: Codable {
    var name: String
    let label: String
    let type: String
    let order: Int
    let direction: FunctionParameterType
}

struct Function: Codable {
    let name: String
    let inputs: [FunctionInput]
    let outputs: [FunctionInput]
}
