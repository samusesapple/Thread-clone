//
//  FeedView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<10, id: \.self) { index in
                FeedCell()
                Divider()
            }
            .padding()
        }
        .navigationTitle("Threads")
    }
}

#Preview {
    FeedView()
}
