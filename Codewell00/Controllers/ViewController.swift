//
//  ViewController.swift
//  Codewell00
//
//  Created by Jinwook Kim on 2021/06/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var discountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }
}

extension ViewController {
    func initialize() {
        self.initializeDiscountLabel()
        self.initializeSubtitleLabel()
    }
    func initializeDiscountLabel() {
        let string: String = "You will be receiving 100% of the earnings. 🎉"
        let underlineAttribute: [NSAttributedString.Key: Int] = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributedString: NSAttributedString = NSAttributedString(string: string, attributes: underlineAttribute)
        self.discountLabel.attributedText = underlineAttributedString
    }
    func initializeSubtitleLabel() {
        let string: String = "Spense is an open platform for individuals to share their unfiltered thoughts. Discuss the topics you love, and get paid for doing just that."
        let italicFont: UIFont = UIFont(name: "Helvetica", size: 18)!
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: string, attributes: [NSAttributedString.Key.font: italicFont])
        attributedString.addAttribute(NSAttributedString.Key.font, value: italicFont, range: NSMakeRange(30, 36))
    }
}
