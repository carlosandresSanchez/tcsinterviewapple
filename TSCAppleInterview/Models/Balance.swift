//
//  Balance.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation


let carlos = User(name: "Carlos", groups: [])

let juan = User(name: "Juan", groups: [])

let sergio = User(name: "Sergio", groups: [])

let expense1 = Expense(users: [juan, sergio], amount: 150, paiBy: carlos, description: "Batman")

let expense2 = Expense(users: [juan, carlos], amount: 240, paiBy: sergio, description: "Hello 2")

class Balance: ObservableObject {
    @Published var balanceSheet = [User: [User: Double]]()
     func addExpense(expense: Expense) {
        for user in expense.users {
            
            if balanceSheet[expense.paiBy] == nil {
                balanceSheet[expense.paiBy] = [User: Double]()
            }
            
            balanceSheet[expense.paiBy]?[user, default: 0.0] += expense.amountPerSplit
            
            if balanceSheet[user] == nil {
                balanceSheet[user] = [User: Double]()
            }
            
            balanceSheet[user]?[expense.paiBy, default: 0.0] -= expense.amountPerSplit
        }
    }
    
    func getBalanceForUser(user: User) -> Double {
        return balanceSheet[user]?.reduce(0.0, { $0 + $1.value}) ?? 0.0
    }
}

