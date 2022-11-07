//
//  SettleUpFactory.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation
import SwiftUI

protocol SeetleUpFactoryProtocol {
    func createSettleUpView() -> SettleUpView
}

struct SeetleUpFactory: SeetleUpFactoryProtocol {
    
    let user: User
    
    let users: [User]
    
    let balance: BalanceService
    
    func createSettleUpView() -> SettleUpView {
        return SettleUpView()
    }
}
