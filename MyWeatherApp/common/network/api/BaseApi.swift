//
//  BaseApi.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/29.
//

import Foundation
import Moya

enum NetworkErrorType: Error {
    case clientError
    case serverError
    case unknownError
}

class BaseAPI {
    
//    static let shared = BaseAPI()
    
    static let appId: String = Bundle.main.apiKey
    
    static func checkStatus(statusCode: Int) -> Result<Data?, NetworkErrorType> {
        switch statusCode {
        case 200..<400:
            return .success(nil)
        case 400..<500:
            return .failure(.clientError)
        case 500...:
            return .failure(.serverError)
        default:
            return .failure(.unknownError)
        }
    }
    
    private init() { }
    
}
