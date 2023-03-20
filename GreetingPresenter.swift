//
//  GreetingPresenter.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

import Foundation

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    unowned var view: GreetingViewProtocol
    var person: Person

    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = " Hello , \(person.name)  \(person.surname)!"
        view.setGreeting(greeting)
    }
    
    
}
