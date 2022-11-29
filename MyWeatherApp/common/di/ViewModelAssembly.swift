//
//  ViewModelAssembly.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/23.
//

import Foundation
import Swinject

final class ViewModelAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(HomeViewModel.self) { r in
            let homeViewModel = HomeViewModel()
            homeViewModel.useCase = r.resolve(HomeUseCase.self)
            return homeViewModel
        }
    }
    
}
