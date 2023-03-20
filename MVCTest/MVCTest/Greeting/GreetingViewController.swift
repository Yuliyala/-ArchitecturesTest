//
//  ViewController.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapGreetingButton()
}

class  GreetingViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: GreetingViewOutputProtocol!
    
    private let configurator: GreetingConfiguratorInputProtocol = GreetingConfigurator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
    }

    @IBAction func showGreetingPressed() {
        presenter.didTapGreetingButton()
    }
    
}

// MARK: - GreetingViewInputProtocol

extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
    
    
}
