//
//  UseCaseAssembly.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/23.
//

import Foundation
import Swinject

final class UseCaseAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(HomeUseCase.self) { r in
            HomeUseCase()
        }
    }
    
}
