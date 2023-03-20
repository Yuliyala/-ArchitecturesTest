//
//  GreetingPresenter.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

import Foundation


struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    
    unowned let view: GreetingViewInputProtocol
    var interactor: GreetingInteractorInputProtocol!
    
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapGreetingButton() {
        interactor.provideGreetingData()
    }
    
}

//MARK: - GreetingInteractorOutputProtocol
extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greeting greetingData: GreetingData) {
        let greeting = " Hello , \(greetingData.name)  \(greetingData.surname) !"
        view.setGreeting(greeting)
    }
}
