//
//  Group.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//
import Foundation

struct Group: Identifiable, Equatable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        return lhs.id == rhs.id
    }
    var id: UUID
    let name: String
    var users: [User]
}
