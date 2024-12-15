//
//  SearchView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { user in
                        UserCell()
                        
                        Divider()
                    }
                    .padding(.vertical, 4)
                }
            }
            .searchable(text: $searchText, prompt: "검색")
        }
    }
}

#Preview {
    SearchView()
}
