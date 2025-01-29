//
//  FeedCell.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import SwiftUI

struct FeedCell: View {
    var post: Post
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                CircularProfileImageView(imageName: post.user.profileImage ?? "user-placeholder")
                
                VStack(alignment: .leading, spacing: 6) {
                    HStack(spacing: 6) {
                        Text(post.user.id)
                            .font(.callout)
                            .bold()
                        
                        Spacer()
                        
                        Text(timeAgo(from: post.date))
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray))
                        
                        Image(systemName: "ellipsis")
                            .font(.system(size: 16))
                    }
                    
                    Text(post.detail)
                        .font(.callout)
                    
                    HStack(spacing: 12) {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .font(.system(size: 16))
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                                .font(.system(size: 16))
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                                .font(.system(size: 16))
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .font(.system(size: 16))
                            
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }
            .padding(.horizontal)
            .padding(.top, 4)
            
            Divider()
                .padding(.horizontal)
        }
    }
}

// MARK: - Methods
extension FeedCell {
    private func timeAgo(from postedDate: Date) -> String {
        let now = Date()
        let components = Calendar.current.dateComponents([.hour, .minute], from: postedDate, to: now)
        
        guard let hours = components.hour, let minutes = components.minute else {
            return "방금 전"
        }
        
        return hours >= 1 ? "\(hours)시간 전" : minutes > 0 ? "\(minutes)분 전" : "방금 전"
    }
}

#Preview {
    FeedCell(post: Post.DUMMY_POST)
}
