//
//  GreetingInteractor.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

protocol GreetingInteractorInputProtocol: AnyObject {
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greeting: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    unowned let presenter: GreetingInteractorOutputProtocol
    
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    func provideGreetingData() {
        let person = Person(name: "Tim", surname: "Cook")
        let greetingData = GreetingData(name: person.name, surname: person.surname)
        presenter.receiveGreetingData(greeting: greetingData)
    }
}
