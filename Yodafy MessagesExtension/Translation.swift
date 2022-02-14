//
//  Translation.swift
//  Yodafy MessagesExtension
//
//  Created by Jack Desmond on 2/8/22.
//
// imports

import Foundation

// sections of the json object the api returns
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

