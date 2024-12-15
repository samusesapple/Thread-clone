//
//  ProfileHeaderView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    var isSelf: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("유저 이름")
                        .font(.title2)
                        .bold()
                    
                    Text("user_id")
                        .font(.callout)
                    
                    Text("유저 소개글")
                        .font(.callout)
                        .padding(.vertical, 10)
                    
                    Text("팔로워 0명")
                        .font(.caption)
                        .foregroundStyle(Color(.systemGray))
                        .padding(.bottom, 10)
                }
                
                Spacer()
                
                Image("user-placeholder")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            
            if isSelf {
                getSelfUserButtons()
            } else {
                getOtherUserButton()
            }
        }
        .padding(.horizontal)
    }
}

// MARK: - ViewBuilder
extension ProfileHeaderView {
    
    @ViewBuilder
    private func getSelfUserButtons() -> some View {
        HStack(spacing: 12) {
            StyledButton(
                title: "프로필 편집",
                action: { print("프로필 편집하기") },
                textColor: .black,
                backgroundColor: .clear,
                border: Color(.systemGray6)
            )
            
            StyledButton(
                title: "프로필 공유",
                action: { print("프로필 공유하기") },
                textColor: .black,
                backgroundColor: .clear,
                border: Color(.systemGray6)
            )
        }
    }
    
    @ViewBuilder
    private func getOtherUserButton() -> some View {
        StyledButton(
            title: "팔로우",
            action: { print("팔로우/언팔로우 하기") },
            textColor: .white,
            backgroundColor: .black
        )
    }
}


#Preview {
    ProfileHeaderView()
}
