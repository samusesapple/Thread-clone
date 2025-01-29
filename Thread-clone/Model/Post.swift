//
//  Post.swift
//  Thread-clone
//
//  Created by Sam Sung on 12/15/24.
//

import Foundation

struct Post {
    var user: User
    var detail: String
    var date: Date
}

extension Post {
    static var DUMMY_POST = Post(user: User.DUMMY_USER, detail: "테스트 Post Detail", date: Date())
}
