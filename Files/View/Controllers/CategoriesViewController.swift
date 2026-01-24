//
//  CategoriesViewController.swift
//  GroceriesAppUiKit
//
//  Created by Md Alif Hossain on 24/1/26.
//

import UIKit

class CategoriesViewController: UIViewController {

    var router: Router
    
    private var categoriesView = CategoriesView()
    
    init(router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
        
        setUp()
        layout()
        setupNavigationController()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func setUp() {
        view.addSubview(categoriesView)
    }
    
    private func layout() {
        categoriesView.pinToEdges(of: view)
    }
    
    private func setupNavigationController() {
        title = "Find Products"
        navigationItem.setHidesBackButton(true, animated: false)
    }

}
