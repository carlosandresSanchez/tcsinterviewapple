//
//  OnboardView.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/5/22.
//

import SwiftUI

struct OnboardView: View {
    
    @State var username: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Login Page")
                    .font(Font.system(.largeTitle))
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack(alignment: .center, spacing: 20) {
                TextField("Username", text: $username)
                    .font(Font.system(.headline))
                    .border(.black)
                    .cornerRadius(5)
                
                HStack {
                    Button("Create") {
                        
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                    Button("Login"){
                        
                    }
                    .buttonStyle(.bordered)
                }
            }
            .foregroundColor(.black)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}
