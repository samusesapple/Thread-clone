//
//  EditProfileView.swift
//  Thread-clone
//
//  Created by Sam Sung on 1/12/25.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])
                
                VStack(spacing: 12) {
                    // name, profileImage
                    HStack {
                        VStack(alignment: .leading) {
                            Text("이름")
                                .fontWeight(.semibold)
                            
                            Text("성현관")
                        }
                        
                        Spacer()
                        
                        CircularProfileImageView(imageName: "sam")
                    }
                    Divider()
                    
                    // bio
                    VStack(alignment: .leading) {
                        Text("소개글")
                            .fontWeight(.semibold)
                        TextField("소개글을 입력해 주세요.", text: $bio, axis: .vertical)
                    }
                    Divider()
                    
                    // link
                    VStack(alignment: .leading) {
                        Text("링크")
                            .fontWeight(.semibold)
                        TextField("링크를 입력해 주세요.", text: $link)
                    }
                    
                    Divider()
                    
                    // private profile (toggle)
                    Toggle("프로필 비공개", isOn: $isPrivateProfile)
                    Divider()
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("프로필 수정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("취소") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("저장") {
                        
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
