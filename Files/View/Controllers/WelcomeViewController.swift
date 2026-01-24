//
//  WelcomeViewController.swift
//  GroceriesAppUiKit
//
//  Created by Md Alif Hossain on 21/1/26.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let router: Router
    
    private let welcomeView = WelcomeView()
    
    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        view.addSubview(welcomeView)
        welcomeView.didTapStart = { [weak self] in
            self?.router.pushCategoriesViewContoller()
        }
    }
    
    private func layout() {
        welcomeView.pinToEdges(of: view)
    }
}
