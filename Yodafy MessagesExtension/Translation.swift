//
//  Translation.swift
//  Yodafy MessagesExtension
//
//  Created by Jack Desmond on 2/8/22.
//

import Foundation

struct Welcome: Codable {
    let success: Success
    let contents: Contents
}

struct Contents: Codable {
    let translated, text, translation: String
}

struct Success: Codable {
    let total: Int
}

