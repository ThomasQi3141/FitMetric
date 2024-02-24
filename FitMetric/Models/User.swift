//
//  User.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-19.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
