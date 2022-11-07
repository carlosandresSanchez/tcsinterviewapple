//
//  UserExpensesView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation


struct UserExpenseViewModel: Identifiable {
    let expense: Expense
    
    var id: UUID {
        return expense.id
    }
    
    enum DebtType {
        case owns(Double)
        case owned(Double)
    }
    
    let debtType: DebtType
}

class UserExpensesViewModel: ObservableObject {
    
    private let expenses: [Expense]
    
    @Published private(set) var expensesViewModels: [UserExpenseViewModel]
    
    @Published private(set) var balance: Double
    
    init(expenses: [Expense], balance: Double, user: User) {
        self.expenses = expenses
        self.expensesViewModels = expenses.map { expense in
            return UserExpenseViewModel(expense: expense,
                                        debtType: expense.paiBy == user ? .owned(expense.amount - expense.amountPerSplit) : .owns(expense.amountPerSplit))
        }
        self.balance = balance
    }
    
}

