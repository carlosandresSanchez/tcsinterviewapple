//
//  User.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation

struct User: Identifiable, Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: String {
        return name 
    }
    let name: String
    var groups: [Group]
}
