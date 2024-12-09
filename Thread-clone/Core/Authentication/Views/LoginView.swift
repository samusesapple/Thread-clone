//
//  LoginView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/8/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("threads-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                // id, pw textfield
                VStack(spacing: 16) {
                    TextField("이메일을 입력해 주세요.", text: $email)
                    SecureField("비밀번호를 입력해 주세요.", text: $password)
                }
                
                NavigationLink {
                    Text("비밀번호 찾기 화면")
                } label: {
                    Text("비밀번호 찾기")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundStyle(.black)
                        .frame(width: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 8)
                        .overlay {
                            Text("로그인")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                        }
                        .frame(width: .infinity, height: 44)
                        .foregroundStyle(.black)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    LoginView()
}
