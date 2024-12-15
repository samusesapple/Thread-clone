//
//  UserCell.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView(imageName: "dummy-user1")
            
            VStack(alignment: .leading) {
                Text("dummyUserId")
                    .bold()
                
                Text("user name")
            }
            .font(.footnote)
            
            Spacer()
            
            Button {
                print("팔로우/언팔로우 하기")
            } label: {
                Text("팔로우")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .tint(.black)
                    .frame(width: 100, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
