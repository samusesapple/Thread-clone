//
//  ProfileView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileTopFilter = .threads
    @Namespace var animation
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ProfileHeaderView()
                
                VStack {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(ProfileTopFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .bold(selectedFilter == filter)
                                
                                Rectangle()
                                    .foregroundStyle(selectedFilter == filter ? .black : .clear)
                                    .frame(width: UIScreen.main.bounds.width / 2, height: 1)
                                    
                            }
                            .onTapGesture {
                                withAnimation(.spring) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
