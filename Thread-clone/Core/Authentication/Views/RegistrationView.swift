//
//  RegistrationView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var userName: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("이메일을 입력해 주세요.", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(ThreadsTextFieldModifier())
                SecureField("비밀번호를 입력해 주세요.", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                TextField("성함을 입력해 주세요.", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())
                TextField("닉네임을 입력해 주세요.", text: $userName)
                    .modifier(ThreadsTextFieldModifier())
            }
            .padding(.horizontal)
            
            Button {
                print("회원가입 하기")
            } label: {
                Text("회원가입 하기")
                    .modifier(ThreadsButtonModifier())
            }
            .padding()

            Spacer()
            
            Divider()
            
            NavigationLink {
                LoginView()
            } label: {
                HStack(spacing: 3) {
                    Text("이미 계정이 있으신가요?")
                    Text("로그인 하기")
                        .bold()
                }
                .font(.footnote)
                .foregroundStyle(.black)
                .padding(.vertical, 16)
            }

        }
    }
}

#Preview {
    RegistrationView()
}
