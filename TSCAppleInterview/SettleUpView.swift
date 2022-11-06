//
//  SettleUpView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct SettleUpView: View {
    
    @State var selection = 1
    var colors = ["Red", "Green", "Blue", "Tartan"]
    
    @State private var selectedColor = "Red"
    @State private var amount: String = ""
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text("Pay").font(Font.largeTitle)
                Spacer()
            }
            .padding(.horizontal)
            VStack(spacing: 10) {
                VStack() {
                    Text("Reason")
                        .font(.headline)
                    Picker("Please choose a color", selection: $selectedColor) {
                        ForEach(colors, id: \.self) {
                            Text($0)
                        }
                    }
                    .tint(Color.white)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                }
                TextField("Amount", text: $amount)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .buttonStyle(.bordered)
                    .textFieldStyle(.roundedBorder)
            }
        }
        .padding(.horizontal)
    }
}

struct SettleUpView_Previews: PreviewProvider {
    static var previews: some View {
        SettleUpView()
    }
}
