//
//  CustomButton.swift
//  programmatic
//
//  Created by Obeisun Timothy on 09/02/2022.
//

import UIKit

class CustomButton: UIButton {
    
    var onClick:((_ stButton:String)->Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, backgroundclr: UIColor, titleClr: UIColor) {
        super.init(frame: .zero)
        setupButton(title: title, backgroundclr: backgroundclr, titleClr: titleClr)
    }
    
    func setupButton(title: String, backgroundclr: UIColor, titleClr: UIColor) {
        setTitle(title, for: .normal)
        setTitleColor(.label, for: .normal)
        backgroundColor = backgroundclr
        layer.cornerRadius = 15
        titleLabel?.font = UIFont(name: "Helvetica", size: 20)
        clipsToBounds = true
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        guard let onClick = onClick else {
            return
        }
        onClick(titleLabel?.text ?? String())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
