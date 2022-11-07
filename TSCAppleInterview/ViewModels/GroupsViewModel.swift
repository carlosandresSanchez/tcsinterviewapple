//
//  GroupsViewModel.swift
//  TSCAppleInterview
//
//  Created by Carlos Sánchez on 11/6/22.
//

import Foundation
import Combine

class GroupsViewModel: ObservableObject {
    
    @Published private(set) var groups:[Group]
    
    init(groups: [Group]) {
        self.groups = groups
    }
    
}
