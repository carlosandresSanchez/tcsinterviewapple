//
//  Expense.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation

struct Expense {
    enum Splits {
        case group(Group)
        case users([User])
        
        var users:[User] {
            switch self {
            case .group(let group):
                return group.users
            case .users(let users):
                return users
            }
        }
    }
    
    let amount: Double
    let paiBy: User
    let splits: Splits
}
