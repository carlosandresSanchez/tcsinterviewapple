//
//  UserBalance.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation

struct UserBalance {
    var id: UUID
    
    static func == (lhs: UserBalance, rhs: UserBalance) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
