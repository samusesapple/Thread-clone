//
//  ProfileView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ProfileHeaderView()
            }
        }
    }
}

#Preview {
    ProfileView()
}
