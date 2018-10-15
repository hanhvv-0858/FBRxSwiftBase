//
//  APIOutput.swift
//  FBRxSwiftBase
//
//  Created by vu.van.hanh on 10/15/18.
//  Copyright © 2018 Zoro Vu. All rights reserved.
//

import ObjectMapper

class APIOutput: APIOutputBase {
    var message: String?
    
    override func mapping(map: Map) {
        message <- map["message"]
    }
}
