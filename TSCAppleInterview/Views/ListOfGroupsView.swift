//
//  ListOfGroupsView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct ListOfGroupsView: View {
    @ObservedObject var vm: GroupsViewModel
    
    init(vm: GroupsViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Groups")
                    .font(.largeTitle)
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
                    ForEach(vm.groups) { group in
                        VStack {
                            Text("\(group.name)")
                            Text("\(group.name)")
                        }
                    }
                }
                .listStyle(.plain)
            }
        }
    }
}

struct ListOfGroupsView_Previews: PreviewProvider {
    static var previews: some View {
        ListOfGroupsView(vm: GroupsViewModel(groups: []))
    }
}
