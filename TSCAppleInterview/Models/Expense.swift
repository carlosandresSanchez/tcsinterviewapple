//
//  Expense.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation

struct Expense: Identifiable {
    
    let id = UUID()
    let users:[User]
    let amount: Double
    let paiBy: User
    let description: String
    
    var amountPerSplit: Double {
        return amount / Double((users.count + 1))
    }
}
