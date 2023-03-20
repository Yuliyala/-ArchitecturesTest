//
//  GreetingConfigurator.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//


protocol GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        
        view.presenter = presenter
        presenter.interactor = interactor
    }

}
