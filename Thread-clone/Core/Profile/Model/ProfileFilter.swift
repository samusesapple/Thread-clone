//
//  ProfileFilter.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/21/24.
//

import Foundation

enum ProfileTopFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    case likes
    
    var title: String {
        switch self {
        case .threads:
            "Threads"
        case .replies:
            "Replies"
        case .likes:
            "Likes"
        }
    }
    
    var id: Int { return self.rawValue }
}
