//
//  PostView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct PostView: View {
    @State private var showNewPostModal = true
    
    var body: some View {
        Text("new post")
            .sheet(isPresented: self.$showNewPostModal) {
                NewPostModal()
            }
    }
}

#Preview {
    PostView()
}
