//
//  AddExpenseView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct AddExpenseView: View {
    @State var selection = 1
    var colors = ["Red", "Green", "Blue", "Tartan"]
    
    @State private var selectedColor = "Red"
    @State private var amount: String = ""
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text("Add expense").font(Font.largeTitle)
                Spacer()
            }
            .padding(.horizontal)
            VStack(spacing: 10) {
                VStack() {
                    TextField("Name", text: $amount)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .buttonStyle(.bordered)
                        .textFieldStyle(.roundedBorder)
                }
                TextField("Amount", text: $amount)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .buttonStyle(.bordered)
                    .textFieldStyle(.roundedBorder)
                Picker("Members", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .tint(Color.white)
                .background(Color.red)
                .foregroundColor(Color.white)
                .clipShape(Capsule())
            }
        }
        .padding(.horizontal)
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpenseView()
    }
}
