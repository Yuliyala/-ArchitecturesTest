//
//  ViewController.swift
//  MVCTest
//
//  Created by Yuliya Lapenak on 3/20/23.
//

import UIKit

class  GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    private var person:Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Yuliya", surname: "Lapenak")
    }

    @IBAction func showGreetingPressed() {
        greetingLabel.text = "Hello, \(person.name) \( person.surname)!"
    }
    
}

