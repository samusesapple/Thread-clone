//
//  NewPostModal.swift
//  Thread-clone
//
//  Created by Sam Sung on 1/30/25.
//

import SwiftUI

struct NewPostModal: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("취소")
                        .foregroundStyle(Color.black)
                }
                
                Spacer()
                
                Text("새로운 스레드")
                    .bold()
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

#Preview {
    NewPostModal()
}
