//
//  CreateGroupView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct CreateGroupView: View {
    
    var colors = ["Red", "Green", "Blue", "Tartan"]
    
    @State private var selectedColor = "Red"
    @State private var groupName = ""
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text("New Group").font(Font.largeTitle)
                Spacer()
            }
            VStack(spacing: 10) {
                TextField("Group Name", text: $groupName)
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .buttonStyle(.bordered)
                    .textFieldStyle(.roundedBorder)
                VStack() {
                    Text("Select Members")
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
            }
        }
        .padding(.horizontal)
    }
}

struct CreateGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CreateGroupView()
    }
}
