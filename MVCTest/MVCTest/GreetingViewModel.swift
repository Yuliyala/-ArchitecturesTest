//
//  GreetingViewModel.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

import Foundation

protocol GreetingViewModelProtocol {
    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)? { get set }
    init(person: Person)
    func showGreeting()
}


class GreetingViewModel: GreetingViewModelProtocol {

    
    var greeting: String? {
        didSet {
            greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> Void)?
    
    private let person: Person
    required init(person: Person) {
        self.person = person
    }
    
    func showGreeting() {
        greeting = " Hello , \(person.name)  \(person.surname)!"
    }
   
    
}
