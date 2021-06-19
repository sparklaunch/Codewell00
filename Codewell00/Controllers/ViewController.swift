//
//  ViewController.swift
//  Codewell00
//
//  Created by Jinwook Kim on 2021/06/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var discountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }
}

extension ViewController {
    func initialize() {
        self.initializeDiscountLabel()
    }
    func initializeDiscountLabel() {
        let string: String = "You will be receiving 100% of the earnings. 🎉"
        let underlineAttribute: [NSAttributedString.Key: Int] = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributedString: NSAttributedString = NSAttributedString(string: string, attributes: underlineAttribute)
        self.discountLabel.attributedText = underlineAttributedString
    }
}
