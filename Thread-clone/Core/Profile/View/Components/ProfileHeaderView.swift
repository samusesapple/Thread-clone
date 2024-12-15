//
//  ProfileHeaderView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct ProfileHeaderView: View {
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
            
            HStack {
                // 프로필 편집
                Button {
                    print("프로필 편집하기")
                } label: {
                    Text("프로필 편집")
                        .frame(maxWidth: .infinity, minHeight: 32)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray6), lineWidth: 2)
                        }
                }
                
                // 프로필 공유
                Button {
                    print("프로필 공유하기")
                } label: {
                    Text("프로필 공유")
                        .frame(maxWidth: .infinity, minHeight: 32)
                        .overlay {
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray6), lineWidth: 2)
                        }
                }
            }
            .tint(.black)
            .font(.subheadline)
            .bold()
        }
        .padding()
    }
}

#Preview {
    ProfileHeaderView()
}
