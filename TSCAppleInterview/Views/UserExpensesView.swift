//
//  UserExpensesView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import SwiftUI

struct UserExpensesView: View {
    @ObservedObject private var vm: UserExpensesViewModel
    
    @State private var showingSheet = false
    
    init(vm: UserExpensesViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Personal")
                HStack(spacing: 0) {
                    Button("Pay") {
                        showingSheet.toggle()
                    }
                    .frame(maxWidth: .infinity)
                    .sheet(isPresented: $showingSheet) {
                        SettleUpView()
                    }
                    Text("Total: $\(String(format: "%.2f", vm.balance))")
                    .frame(maxWidth: .infinity)
                }
                .padding(.horizontal)
                List {
                    ForEach(vm.expensesViewModels, content: createExpenseRow(expenseViewModel:))
                }
                .listStyle(.plain)
            }
            
        }
    }
    
    private func createExpenseRow(expenseViewModel: UserExpenseViewModel) -> some View {
        HStack {
            Text("\(expenseViewModel.expense.description)")
            Spacer()
            switch expenseViewModel.debtType {
            case .owns(let amount):
                Text("You own $\(String(format: "%.2f", amount))")
                    .foregroundColor(.red)
            case .owned(let amount):
                Text("You are owned $\(String(format: "%.2f", amount))")
                    .foregroundColor(.green)
            }
        }
    }
}

struct UserExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        
        let carlos = User(id: UUID(),
                   name: "Carlos",
                   groups: [])
        
        let juan = User(id: UUID(),
                   name: "Juan",
                   groups: [])
        
        let sergio = User(id: UUID(),
                   name: "Sergio",
                   groups: [])
        
        let expense1 = Expense(amount: 100, paiBy: carlos, splits: Expense.Splits.users([juan, sergio]), description: "Batman")
        
        let expense2 = Expense(amount: 200, paiBy: sergio, splits: Expense.Splits.users([juan, carlos]), description: "Hello 2")
        
        let vm = UserExpensesViewModel(expenses: [expense1,
                                                 expense2],
                                       balance: 100.0,
                                       user: carlos )
        return UserExpensesView(vm: vm)
    }
}
