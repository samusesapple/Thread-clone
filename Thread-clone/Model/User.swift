//
//  User.swift
//  Thread-clone
//
//  Created by Sam Sung on 1/19/25.
//

import Foundation

struct User {
    var name: String
    var id: String
    var introText: String
    var profileImage: String?
    var followers: [User]
    var followee: [User]
    
    init(name: String, id: String, introText: String, profileImage: String? = nil, followers: [User], followee: [User]) {
        self.name = name
        self.id = id
        self.introText = introText
        self.profileImage = profileImage
        self.followers = followers
        self.followee = followee
    }
}

extension User {
    static var DUMMY_USER = User(name: "성현관", id: "samusesapple", introText: "iOS 개발자 성현관", profileImage: nil, followers: [], followee: [])
}
