//
//  ViewModel.swift
//  MyWeatherApp
//
//  Created by JihoMac on 2022/11/23.
//

import Foundation
import RxSwift
import RxRelay

class ViewModel: NSObject {

    let toastMessageSubject = PublishSubject<String>()
    
    var disposeBag = DisposeBag()
    
    override init() {
        super.init()
        
        toastMessageSubject.subscribe(onNext: { text in
            Toast.show(title: text)
        }).disposed(by: disposeBag)
    }
    
    deinit {
        disposeBag = DisposeBag()
    }
    
}
