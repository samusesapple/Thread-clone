//
//  ThreadsTabView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab: ThreadsTabSelection = .feed
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(value: .feed) {
                FeedView()
            } label: {
                Image(systemName: selectedTab == .feed ? "house.fill" : "house")
                    .environment(\.symbolVariants, selectedTab == .feed ? .fill : .none)
            }
            
            Tab(value: .search) {
                SearchView()
            } label: {
                Image(systemName: "magnifyingglass")
            }
            
            Tab(value: .post) {
                PostView()
            } label: {
                Image(systemName: "plus")
            }
            
            Tab(value: .activity) {
                ActivityView()
            } label: {
                Image(systemName: selectedTab == .activity ? "heart.fill" : "heart")
                    .environment(\.symbolVariants, selectedTab == .activity ? .fill : .none)
            }
            
            Tab(value: .profile) {
                ProfileView(user: User.getSelfProfile())
            } label: {
                Image(systemName: selectedTab == .profile ? "person.fill" : "person")
                    .environment(\.symbolVariants, selectedTab == .profile ? .fill : .none)
            }
        }
        .tint(.black)
    }
}


#Preview {
    ThreadsTabView()
}
