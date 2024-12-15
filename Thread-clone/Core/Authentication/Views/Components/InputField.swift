//
//  InputField.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/8/24.
//

import SwiftUI

struct InputField: View {
    let placeholder: String?
    @Binding var value: String
    
    var body: some View {
        TextField(placeholder ?? "", text: $value)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
}
