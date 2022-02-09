//
//  FirstViewController.swift
//  programmatic
//
//  Created by Obeisun Timothy on 09/02/2022.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {
    
    var buyBtn: CustomButton = CustomButton(title: "Buy", backgroundclr: .systemCyan, titleClr: .label)
    var createAccountBtn: CustomButton = CustomButton(title: "Create Account", backgroundclr: .systemCyan, titleClr: .label)
    var stackView: UIStackView = UIStackView()
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDefault()
        setupStackView()
        btnActions()
    }
    
    func btnActions() {
        buyBtn.onClick = { btnTitle in
            self.coordinator?.buySubScriptions(textLabel: btnTitle)
        }
        
        createAccountBtn.onClick = { btnTitle in
            self.coordinator?.createAccount()
        }
    }
    
    func setupStackView() {
        stackView = UIStackView(arrangedSubviews: [buyBtn, createAccountBtn])
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.distribution = .fillEqually
        stackView.snp.makeConstraints { make in
            make.top.equalTo(view).offset(150)
            make.right.equalTo(view).offset(-20)
            make.left.equalTo(view).offset(20)
            make.height.equalTo(130)
        }
    }
    
    func setupDefault() {
        view.backgroundColor = .systemBackground
    }
}
