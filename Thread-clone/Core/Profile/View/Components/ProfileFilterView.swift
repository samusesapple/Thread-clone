//
//  ProfileFilterView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/22/24.
//

import SwiftUI

struct ProfileFilterView: View {
    @Binding var selectedFilter: ProfileTopFilter
    @Namespace var animation

    private var filterBarWidth: CGFloat? {
        let totalCount: CGFloat = CGFloat(ProfileTopFilter.allCases.count)
        let screenWidth: CGFloat = UIWindow.current?.screen.bounds.width ?? 0
        return (screenWidth / totalCount) - 16
    }
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 0) {
                ForEach(ProfileTopFilter.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .bold(selectedFilter == filter)
                        
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .foregroundStyle(.gray.opacity(0.2))
                                .frame(width: filterBarWidth, height: 1)
                        }
                            
                    }
                    .onTapGesture {
                        withAnimation(.spring) {
                            selectedFilter = filter
                        }
                    }
                }
            }
            LazyVStack {
                getCells(for: selectedFilter)
            }
        }
    }
}

extension ProfileFilterView {
    @ViewBuilder
    func getCells(for selectedFilter: ProfileTopFilter) -> some View {
        switch selectedFilter {
        case .threads:
            FeedCell()
        case .replies:
            Text("replies")
        }
    }
}
