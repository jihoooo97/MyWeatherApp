//
//  WeatherRequest.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/29.
//

import Foundation

struct WeatherRequest: ApiRequest {
    var latitude: Double
    var longitude: Double
    var appId: String
    var mode: String? = "JSON"
    var units: String? = "standard"
    var language: String? = "KR"
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
        case appId = "appid"
        case mode, units
        case language = "lang"
    }
}
