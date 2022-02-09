//
//  Coordinator.swift
//  programmatic
//
//  Created by Obeisun Timothy on 09/02/2022.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
    
    func start()
}
