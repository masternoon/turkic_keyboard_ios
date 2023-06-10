//
//  KeyboardViewController.swift
//  TurkicKeyboardExtension
//
//  Created by Andy Reed on 11.05.2023.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    //@IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var rows: UIStackView!
    
        
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hspacing = 4.0
        
        rows = UIStackView()
        rows.axis = .vertical
        rows.alignment = .fill
        rows.distribution = .fillEqually
        
        rows.spacing = 5
        rows.translatesAutoresizingMaskIntoConstraints = false
        rows.isLayoutMarginsRelativeArrangement = true
        rows.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        self.view.addSubview(rows)
        //rows.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        rows.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        rows.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        rows.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        rows.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        let row1 = UIStackView()
        row1.axis = .horizontal
        row1.alignment = .fill
        row1.distribution = .fillEqually
        row1.spacing = hspacing
        row1.translatesAutoresizingMaskIntoConstraints = false
        
        addRowKey(text: "𐰉‎", row: row1)
        addRowKey(text: "𐰋‎‎", row: row1)
        addRowKey(text: "𐰑‎", row: row1)
        addRowKey(text: "𐰂", row: row1)
        addRowKey(text: "‎𐰍‎", row: row1)
        addRowKey(text: "‎𐰏", row: row1)
        addRowKey(text: "‎𐰲", row: row1)
        addRowKey(text: "𐰱‎‎", row: row1)
        addRowKey(text: "𐰖", row: row1)
        addRowKey(text: "𐰘", row: row1)
        rows.addArrangedSubview(row1)
        
        let row2 = UIStackView()
        row2.axis = .horizontal
        row2.alignment = .fill
        row2.distribution = .fillEqually
        row2.spacing = hspacing
        row2.translatesAutoresizingMaskIntoConstraints = false
        
        addRowKey(text: "𐰣", row: row2)
        addRowKey(text: "𐰤", row: row2)
        addRowKey(text: "𐰺", row: row2)
        addRowKey(text: "𐰼", row: row2)
        addRowKey(text: "𐰽", row: row2)
        addRowKey(text: "𐰾", row: row2)
        addRowKey(text: "𐰞", row: row2)
        addRowKey(text: "𐰠", row: row2)
        addRowKey(text: "𐰴", row: row2)
        addRowKey(text: "𐰚", row: row2)
        rows.addArrangedSubview(row2)
        
        let row3 = UIStackView()
        row3.axis = .horizontal
        row3.alignment = .fill
        row3.distribution = .fillEqually
        row3.spacing = hspacing
        row3.translatesAutoresizingMaskIntoConstraints = false
        
        addRowKey(text: "𐱃", row: row3)
        addRowKey(text: "𐱄‎", row: row3)
        addRowKey(text: "𐱅", row: row3)
        addRowKey(text: "𐱁‎‎", row: row3)
        addRowKey(text: "𐱂‎‎", row: row3)
        addRowKey(text: "𐰿‎", row: row3)
        addRowKey(text: "𐰢‎‎", row: row3)
        addRowKey(text: "𐰯‎", row: row3)
        addRowKey(text: "𐰭‎‎", row: row3)
        addRowKey(text: "𐰕‎‎", row: row3)
        rows.addArrangedSubview(row3)
        
        let row4 = UIStackView()
        row4.axis = .horizontal
        row4.alignment = .fill
        row4.distribution = .fillEqually
        row4.spacing = 5
        row4.translatesAutoresizingMaskIntoConstraints = false
        
        addRowKey(text: "?", row: row4)
        addRowKey(text: "‎!", row: row4)
        addRowKey(text: "𐰀", row: row4)
        addRowKey(text: "‎𐰂", row: row4)
        addRowKey(text: "‎‎𐰃‎", row: row4)
        addRowKey(text: "𐰄‎", row: row4)
        addRowKey(text: "‎𐰆‎", row: row4)
        addRowKey(text: "‎𐰈", row: row4)
        addRowKey(text: "‎‎𐰅", row: row4)
        addRowKey(text: "𐰪", row: row4)
        rows.addArrangedSubview(row4)
        
        let row5 = UIStackView()
        row5.axis = .horizontal
        row5.alignment = .fill
        row5.distribution = .fillEqually
        row5.spacing = hspacing
        row5.translatesAutoresizingMaskIntoConstraints = false
        
        let row5p1 = UIStackView()
        row5p1.axis = .horizontal
        row5p1.alignment = .fill
        row5p1.distribution = .fillEqually
        row5p1.spacing = hspacing
        row5p1.translatesAutoresizingMaskIntoConstraints = false
                
        if self.needsInputModeSwitchKey {
            addChangeKeyboardRowKey(text: "\u{1f310}", row: row5p1)
            addDeleteRowKey(text: "->", row: row5p1)
        } else {
            addDeleteRowKey(text: "->", row: row5p1)
        }
        addRowKey(text: "‎‎,", row: row5p1)
        
        row5.addArrangedSubview(row5p1)
        
        let row5p2 = UIStackView()
        row5p2.axis = .horizontal
        row5p2.alignment = .fill
        row5p2.distribution = .fillEqually
        row5p2.spacing = hspacing
        row5p2.translatesAutoresizingMaskIntoConstraints = false
        
        addRowKey(text: "‎‎ ", row: row5p2)
        
        row5.addArrangedSubview(row5p2)
        
        let row5p3 = UIStackView()
        row5p3.axis = .horizontal
        row5p3.alignment = .fill
        row5p3.distribution = .fillEqually
        row5p3.spacing = hspacing
        row5p3.translatesAutoresizingMaskIntoConstraints = false
                
        addRowKey(text: "‎‎.", row: row5p3)
        addReturnRowKey(text: "‎‎return", row: row5p3)
        
        row5.addArrangedSubview(row5p3)
        
        rows.addArrangedSubview(row5)
        
        
        //NSLog(@"frame: %@", String(rows.frame.height))
        self.view.heightAnchor.constraint(equalToConstant: CGFloat(200)).isActive = true
    }
    
    class KeyBut: UIButton {
        var key_text: String = "not set"
    }
    
    @objc func addRowKey(text: String, row: UIStackView) {
        let fbut = KeyBut(type: .system)
        fbut.setTitle(text, for: .normal)
        fbut.titleLabel?.adjustsFontSizeToFitWidth = true
        fbut.sizeToFit()
        fbut.setTitleColor(UIColor.white, for: .normal)
        fbut.layer.cornerRadius = 8
        fbut.backgroundColor = UIColor.darkGray
        fbut.key_text = text
        fbut.addTarget(self, action: #selector(typeText), for: .touchUpInside)
        
        row.addArrangedSubview(fbut)
    }
    
    @objc func addDeleteRowKey(text: String, row: UIStackView) {
        let fbut = KeyBut(type: .system)
        fbut.setTitle(text, for: .normal)
        fbut.titleLabel?.adjustsFontSizeToFitWidth = true
        fbut.sizeToFit()
        fbut.setTitleColor(UIColor.white, for: .normal)
        fbut.layer.cornerRadius = 8
        fbut.backgroundColor = UIColor.darkGray
        fbut.key_text = text
        fbut.addTarget(self, action: #selector(deleteLastChar), for: .touchUpInside)
        
        row.addArrangedSubview(fbut)
    }
    
    @objc func addReturnRowKey(text: String, row: UIStackView) {
        let fbut = KeyBut(type: .system)
        fbut.setTitle(text, for: .normal)
        fbut.titleLabel?.adjustsFontSizeToFitWidth = true
        fbut.sizeToFit()
        fbut.setTitleColor(UIColor.white, for: .normal)
        fbut.layer.cornerRadius = 8
        fbut.backgroundColor = UIColor.darkGray
        fbut.key_text = "\n"
        fbut.addTarget(self, action: #selector(typeText), for: .touchUpInside)
        
        row.addArrangedSubview(fbut)
    }
    
    @objc func addChangeKeyboardRowKey(text: String, row: UIStackView) {
        let fbut = KeyBut(type: .system)
        fbut.setTitle(text, for: .normal)
        fbut.titleLabel?.adjustsFontSizeToFitWidth = true
        fbut.sizeToFit()
        fbut.setTitleColor(UIColor.white, for: .normal)
        fbut.layer.cornerRadius = 8
        fbut.backgroundColor = UIColor.darkGray
        fbut.key_text = text
        fbut.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        row.addArrangedSubview(fbut)
    }
            
    @objc func deleteLastChar(){
        self.textDocumentProxy.deleteBackward()
    }
    
    @objc func typeText(_ sender: KeyBut){
        self.textDocumentProxy.insertText(sender.key_text)
    }
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        //let rwidth = rows.frame.width
        self.view.backgroundColor = UIColor.black
                
        //Color.black.ignoresSafeArea(.all)
        //var view_width = Int(self.view.safeAreaLayoutGuide.layoutFrame.width)
        //let view_height = Int(self.view.bounds.size.height)
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    //override func viewDidLayoutSubviews() {
    //    let safe_width = self.view.safeAreaLayoutGuide.layoutFrame.width
    //    let safe_ins_r = self.view.safeAreaInsets.right
    //    let safe_ins_l = self.view.safeAreaInsets.left
    //    let safe_ins_b = self.view.safeAreaInsets.bottom
    //}
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
//        var textColor: UIColor
//        let proxy = self.textDocumentProxy
//        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
//            textColor = UIColor.white
//        } else {
//            textColor = UIColor.black
//        }
//        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }

}
