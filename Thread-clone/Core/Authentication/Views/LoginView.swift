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
                Spacer()
                
                Image("threads-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack(spacing: 16) {
                    InputField(placeholder: "이메일을 입력해 주세요", value: $email)
                    
                    SecureField("비밀번호를 입력해 주세요.", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(.horizontal)
                
                NavigationLink {
                    Text("비밀번호 찾기 화면")
                } label: {
                    Text("비밀번호 찾기")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    // 로그인 액션
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
                .padding(.horizontal)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                } label: {
                    HStack(spacing: 3) {
                        Text("계정이 없으신가요?")
                        Text("회원가입 하기")
                            .bold()
                    }
                    .font(.footnote)
                    .foregroundStyle(.black)
                    .padding(.vertical, 16)
                }

            }
        }
    }
}

#Preview {
    LoginView()
}
