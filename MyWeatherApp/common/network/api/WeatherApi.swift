//
//  WeatherApi.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/29.
//

import Foundation
import Moya

enum WeatherApi {
    case currentWeather
}

extension WeatherApi: TargetType {
    
    var baseURL: URL {
        let url = URL(string: "https://api.openweathermap.org/data/2.5")!
        return url
    }
    
    var path: String {
        switch self {
        case .currentWeather:
            return "/weather"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .currentWeather:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .currentWeather:
            return .requestParameters(
                parameters: [:],
                encoding: URLEncoding.queryString
            )
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .currentWeather:
            return ["Content-type" : "application/json"]
        }
    }
    
}
