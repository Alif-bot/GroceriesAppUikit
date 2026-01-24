//
//  CategoriesView.swift
//  GroceriesAppUiKit
//
//  Created by Md Alif Hossain on 24/1/26.
//

import UIKit

class CategoriesView: UIView {
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search your products here"
        searchBar.searchBarStyle = .minimal
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}

extension CategoriesView {
    private func setUpView() {
        addSubview(searchBar)
    }
    
    private func style() {
        backgroundColor = .white
    }
    
    private func layout() {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)            
        ])
    }
}
