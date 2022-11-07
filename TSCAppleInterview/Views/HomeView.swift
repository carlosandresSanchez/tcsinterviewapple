//
//  HomeView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var vm: HomeViewModel
    
    init(vm: HomeViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Home page")
                HStack {
                    Text("Welcome \(vm.username)!")
                    Spacer()
                }
                .padding(.horizontal)
                Button("Settle up") {
                    
                }
                HStack(spacing: 0) {
                    Button("Personal") {
                        
                    }
                    .frame(maxWidth: .infinity)
                    Button("Groups") {
                        
                    }
                    .frame(maxWidth: .infinity)
                }
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(vm: HomeViewModel(username: "Carlos"))
    }
}
