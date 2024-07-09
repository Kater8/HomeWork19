//
//  User.swift
//  HomeWork19
//
//  Created by K on 09.07.2024.
//

import Foundation

struct User: Codable {
    
    let id: Int
    let email: String
}

struct UserList: Codable {
    
    let data: [User]
}
