//
//  ThreadsTabView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab: TabSelection = .feed
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(value: .feed) {
                Text("피드")
            } label: {
                Image(systemName: selectedTab == .feed ? "house.fill" : "house")
                    .environment(\.symbolVariants, selectedTab == .feed ? .fill : .none)
            }
            
            Tab(value: .search) {
                Text("검색")
            } label: {
                Image(systemName: "magnifyingglass")
            }
            
            Tab(value: .writePost) {
                Text("게시물 작성")
            } label: {
                Image(systemName: "plus")
            }
            
            Tab(value: .activity) {
                Text("활동")
            } label: {
                Image(systemName: selectedTab == .activity ? "heart.fill" : "heart")
                    .environment(\.symbolVariants, selectedTab == .activity ? .fill : .none)
            }
            
            Tab(value: .user) {
                Text("유저 정보")
            } label: {
                Image(systemName: selectedTab == .user ? "person.fill" : "person")
                    .environment(\.symbolVariants, selectedTab == .user ? .fill : .none)
            }
        }
        .tint(.black)
    }
}

// MARK: - TabBar values
extension ThreadsTabView {
    enum TabSelection: Hashable {
        case feed
        case search
        case writePost
        case activity
        case user
    }
}

#Preview {
    ThreadsTabView()
}
