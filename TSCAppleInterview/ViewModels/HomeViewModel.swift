//
//  HomeViewModel.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    let username: String
    
    init(username: String) {
        self.username = username
    }
}
