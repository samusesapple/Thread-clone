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
                    TextField("이메일을 입력해 주세요", text: $email)
                        .textInputAutocapitalization(.never)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("비밀번호를 입력해 주세요.", text: $password)
                        .modifier(ThreadsTextFieldModifier())
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
                    Text("로그인")
                        .modifier(ThreadsButtonModifier())
                }
                .padding(.horizontal)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
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
