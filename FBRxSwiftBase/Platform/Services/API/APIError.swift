//
//  APIError.swift
//  FBRxSwiftBase
//
//  Created by vu.van.hanh on 10/15/18.
//  Copyright © 2018 Zoro Vu. All rights reserved.
//

struct APIExpiredTokenError: APIError {
    var errorDescription: String? {
        return NSLocalizedString("api.expiredTokenError", comment: "")
    }
}

struct APIResponseError: APIError {
    let statusCode: Int?
    let message: String
    
    var errorDescription: String? {
        return message
    }
}
