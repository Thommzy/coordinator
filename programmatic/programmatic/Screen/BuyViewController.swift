//
//  BuyViewController.swift
//  programmatic
//
//  Created by Obeisun Timothy on 09/02/2022.
//

import UIKit
import SnapKit

class BuyViewController: UIViewController {
    
    var labelTitle: String?
    var buyLabel = CustomLabel()
    weak var coordinator: MainCoordinator?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        setupBuyLabel()
    }
    
    func setupBuyLabel() {
        buyLabel = CustomLabel(labelTitle ?? String(), .systemCyan, .label)
        view.addSubview(buyLabel)
        buyLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.right.equalTo(view).offset(-50)
            make.left.equalTo(view).offset(50)
            make.height.equalTo(70)
        }
    }
}
