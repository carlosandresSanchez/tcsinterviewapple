//
//  ContentView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/3/22.
//

import SwiftUI

struct UserBalance {
    var id: UUID
    
    static func == (lhs: UserBalance, rhs: UserBalance) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}


struct Balance {
    var balanceOfUsers: [User: [Expense]]
}

struct Group: Identifiable, Equatable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        return lhs.id == rhs.id
    }
    var id: UUID
    let name: String
    var users: [User]
}

struct User: Identifiable, Hashable {
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: UUID
    let name: String
    var groups: [Group]
}

struct Expense {

    enum Splits {
        case group(Group)
        case users([User])
        
        var users:[User] {
            switch self {
            case .group(let group):
                return group.users
            case .users(let users):
                return users
            }
        }
    }
    
    let amount: Double
    let paiBy: User
    let splits: Splits
    
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
