//
//  CustomLabel.swift
//  programmatic
//
//  Created by Obeisun Timothy on 09/02/2022.
//

import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(_ title: String, _ backgroundclr: UIColor, _ titleClr: UIColor) {
        super.init(frame: .zero)
        setupLabel(title: title, backgroundclr: backgroundclr, titleClr: titleClr)
    }
    
    private func setupLabel(title: String, backgroundclr: UIColor, titleClr: UIColor) {
        text = title
        textColor = .label
        backgroundColor = .systemCyan
        layer.cornerRadius = 15
        font = UIFont(name: "Helvetica", size: 20)
        clipsToBounds = true
        textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
