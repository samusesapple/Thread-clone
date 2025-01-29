//
//  ActivityView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10, id: \.self) { index in
                        RecommendUserCell(user: User.DUMMY_USER)
                        FeedCell(post: Post.DUMMY_POST)
                    }
                }
            }
            .refreshable {
                print("새로고침")
            }
            .navigationTitle("Activity")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ActivityView()
}
