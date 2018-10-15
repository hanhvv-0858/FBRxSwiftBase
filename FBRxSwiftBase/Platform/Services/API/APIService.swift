//
//  APIService.swift
//  FBRxSwiftBase
//
//  Created by vu.van.hanh on 10/15/18.
//  Copyright © 2018 Zoro Vu. All rights reserved.
//

import UIKit

final class API: APIBase {
    static var shared = API()
    
    override func handleResponseError(response: HTTPURLResponse, data: Data, json: JSONDictionary?) -> Error {
        if let json = json, let message = json["message"] as? String {
            return APIResponseError(statusCode: response.statusCode, message: message)
        }
        return super.handleResponseError(response: response, data: data, json: json)
    }
}
