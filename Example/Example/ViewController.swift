//
//  ViewController.swift
//  SwifrDebug
//
//  Created by Vasyl Seredniy on 04.10.2020.
//

import UIKit
import ObjectiveSwiftDebug

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    let randomText = RandomText()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomText.source = self
        label.text = randomText.randomString(length: randomText.callCount)
    }
    
    @IBAction func action(_ sender: Any) {
        label.text = randomText.randomString(length: randomText.callCount)
    }
}

extension ViewController: RandomTextSource {
    func prefix(_ callCount: Int) -> String {
        return "\(callCount)_"
    }
    
    func suffix(_ callCount: Int) -> String {
        return "_\(callCount)"
    }
}

