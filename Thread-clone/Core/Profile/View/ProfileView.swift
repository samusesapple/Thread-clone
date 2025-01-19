//
//  ProfileView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileTopFilter = .threads
    var user: User = User.DUMMY_USER
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 14) {
                ProfileHeaderView(user)
                
                ProfileFilterView(selectedFilter: $selectedFilter)
            }
        }
    }
}

#Preview {
    ProfileView()
}
