//
//  Bundle+Extension.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/29.
//

import Foundation

extension Bundle {

    var apiKey: String {
        guard let filePath = self.path(
            forResource: "WeatherInfo",
            ofType: "plist"
        ) else { return "" }
        
        guard let resource = NSDictionary(
            contentsOfFile: filePath
        ) else { return "" }
        
        guard let key = resource["API_KEY"] as? String else {
            fatalError("WeatherInfo.plist에 API_KEY를 설정해주세요.")
        }
        
        return key
    }
    
}
