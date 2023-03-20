//
//  ViewController.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

import UIKit

class  GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
 
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = {[unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
      let person = Person(name: "Tim", surname: "Cook")
      viewModel = GreetingViewModel(person: person)
    }

    @IBAction func showGreetingPressed() {
        viewModel.showGreeting()
    }
    
}

