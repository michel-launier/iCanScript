//
//  Function.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-03-10.
//

import Foundation

enum ParameterDirection: Int, Codable {
    case In
    case Out
    case InOut
}

struct FunctionInput: Codable {
    var name: String
    let label: String
    let type: String
    let order: Int
    let direction: ParameterDirection
    let defaultValue: String
}

struct FunctionOutput: Codable {
    var name: String
    let label: String
    let type: String
    let order: Int
    let direction: ParameterDirection
}

struct Function: Codable {
    var name: String
    let label: String
    let inputs: [FunctionInput]
    let outputs: [FunctionInput]
}
