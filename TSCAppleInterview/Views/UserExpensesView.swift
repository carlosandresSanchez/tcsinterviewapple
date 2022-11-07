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
                    Text("Balance: $\(String(format: "%.2f", vm.balance))")
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
                Text("You own \(expenseViewModel.expense.paiBy.name) $\(String(format: "%.2f", amount))")
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
        
        
        var balance = Balance()
        balance.addExpense(expense: expense1)
        balance.addExpense(expense: expense2)
        
        
        let vm = UserExpensesViewModel(expenses: [expense1,
                                                 expense2],
                                       balance: balance.getBalanceForUser(user: carlos),
                                       user: carlos )
        return UserExpensesView(vm: vm)
    }
}
