//
//  StyledButton.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct StyledButton: View {
    let title: String
    let action: () -> Void
    let textColor: Color
    let backgroundColor: Color
    let border: Color?
    
    init(title: String,
         action: @escaping () -> Void,
         textColor: Color = .white,
         backgroundColor: Color = .black,
         border: Color? = nil) {
        self.title = title
        self.action = action
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.border = border
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.subheadline)
                .bold()
                .foregroundColor(textColor)
                .frame(maxWidth: .infinity, minHeight: 32)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .fill(backgroundColor)
                )
                .overlay {
                    if let borderColor = border {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(borderColor, lineWidth: 2)
                    }
                }
        }
    }
}
