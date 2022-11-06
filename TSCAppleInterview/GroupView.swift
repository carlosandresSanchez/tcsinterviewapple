//
//  GroupView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Group")
                .padding(.horizontal)
                VStack {
                    HStack {
                        Button("Add expense") {
                            
                        }
                        Spacer()
                    }
                }.frame(maxWidth: .infinity)
                    .padding(.horizontal)
                Text("List of expenses")
                List {
                    ForEach((0..<50)) { content in
                        Text("\(content)")
                    }
                }
                .listStyle(.plain)
            }
            
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
