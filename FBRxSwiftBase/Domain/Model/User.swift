//
//  User.swift
//  FBRxSwiftBase
//
//  Created by vu.van.hanh on 10/15/18.
//  Copyright © 2018 Zoro Vu. All rights reserved.
//

struct User {
    var id: Int
    var name: String
    var email: String
}

extension User {
    init() {
        self.init(id: 0, name: "", email: "")
    }
}

extension User: Then, HasID, Hashable { }
