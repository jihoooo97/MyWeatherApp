//
//  ViewControllerAssembly.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/22.
//

import Foundation
import Swinject

final class ViewControllerAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(HomeViewController.self) { r in
            let viewController = HomeViewController()
            viewController.viewModel = r.resolve(HomeViewModel.self)
            return viewController
        }
    }
    
}
