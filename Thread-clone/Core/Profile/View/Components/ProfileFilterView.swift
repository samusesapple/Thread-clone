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
                                .frame(width: UIScreen.main.bounds.width / 2, height: 1)
                                .matchedGeometryEffect(id: "selectedFilter", in: animation)
                        } else {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: UIScreen.main.bounds.width / 2, height: 1)
                        }
                            
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
