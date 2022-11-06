//
//  ListOfGroupsView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct ListOfGroupsView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Groups")
                .padding(.horizontal)
                VStack {
                    HStack {
                        Button("Add group") {
                            
                        }
                        Spacer()
                    }
                }.frame(maxWidth: .infinity)
                    .padding(.horizontal)
                Text("List of groups")
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

struct ListOfGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGroupsView()
    }
}
