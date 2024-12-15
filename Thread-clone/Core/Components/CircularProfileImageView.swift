//
//  CircularProfileImageView.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct CircularProfileImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}
