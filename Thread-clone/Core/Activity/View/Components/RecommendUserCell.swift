//
//  RecommendUserCell.swift
//  Thread-clone
//
//  Created by Sam Sung on 1/30/25.
//

import SwiftUI

struct RecommendUserCell: View {
    var user: User
    
    var body: some View {
        HStack {
            CircularProfileImageView(imageName: user.profileImage ?? "user-placeholder")
            
            VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .center) {
                    Text(user.id)
                        .font(.callout)
                        .bold()
                    Text("1일")
                        .font(.caption)
                        .foregroundStyle(Color(.systemGray))
                }
                
                Text("팔로우 추천")
                    .font(.footnote)
                    .foregroundStyle(Color(.systemGray))
            }
            
            Spacer()
            
            StyledButton(
                title: "팔로우",
                action: { print("팔로우/언팔로우 하기") },
                textColor: .white,
                backgroundColor: .black
            )
            .frame(width: 120)
        }
        .padding(.vertical, 8)
        .padding(.horizontal)
        
        Divider()
            .padding(.horizontal)
    }
}

#Preview {
    RecommendUserCell(user: User.DUMMY_USER)
}
