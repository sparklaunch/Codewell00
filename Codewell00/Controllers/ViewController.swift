//
//  ViewController.swift
//  Codewell00
//
//  Created by Jinwook Kim on 2021/06/19.
//

import UIKit
import SwiftRichString

class ViewController: UIViewController {
    @IBOutlet var getStartedTextField: UITextField!
    @IBOutlet var getStartedButton: UIButton!
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
        self.initializeGetStartedButton()
        self.initializeGetStartedTextField()
    }
    func initializeDiscountLabel() {
        let string: String = "You will be receiving 100% of the earnings. 🎉"
        let underlineAttribute: [NSAttributedString.Key: Int] = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
        let underlineAttributedString: NSAttributedString = NSAttributedString(string: string, attributes: underlineAttribute)
        self.discountLabel.attributedText = underlineAttributedString
    }
    func initializeSubtitleLabel() {
        let string: String = "Spense is an open platform for individuals to share their unfiltered thoughts. Discuss the topics you love, and get paid for doing <italic>just</italic> that."
        let style: Style = Style {
            $0.font = SystemFonts.Helvetica.font(size: 18)
            $0.traitVariants = .italic
        }
        let styleGroup = StyleXML(["italic": style])
        let attributedString: NSAttributedString = string.set(style: styleGroup)
        self.subtitleLabel.attributedText = attributedString
    }
    func initializeGetStartedButton() {
        self.getStartedButton.layer.cornerRadius = 5.0
    }
    func initializeGetStartedTextField() {
        self.getStartedTextField.layer.cornerRadius = 5.0
        self.getStartedTextField.layer.borderWidth = 1
        self.getStartedTextField.layer.borderColor = UIColor.systemGray.cgColor
        self.getStartedTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.getStartedTextField.frame.size.height))
        self.getStartedTextField.leftViewMode = .always
        self.getStartedTextField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.getStartedTextField.frame.size.height))
        self.getStartedTextField.rightViewMode = .always
    }
}
