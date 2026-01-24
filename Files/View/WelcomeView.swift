//
//  WelcomeView.swift
//  GroceriesAppUiKit
//
//  Created by Md Alif Hossain on 22/1/26.
//

import UIKit

class WelcomeView: UIView {
    
    var didTapStart: (() -> Void)?
    
    private var backgroundImage: UIImageView = {
        let imageView = UIImageView(image: Images.Welcome.background)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var logoView: UIImageView = {
        let logoView = UIImageView(image: Images.Welcome.logo)
        logoView.contentMode = .scaleAspectFit
        logoView.translatesAutoresizingMaskIntoConstraints = false
        return logoView
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.text = "Welcome To Our Store"
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.text = "Get your products"
        label.textColor = .description
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var startButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .primary
        button.setTitle("Get Started", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        button.layer.cornerRadius = 16
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc
    func didTapStartButton() {
        didTapStart?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize{
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}

extension WelcomeView {
    private func setupView() {
        addSubViews(backgroundImage, logoView, titleLabel, descriptionLabel, startButton)
        startButton.addTarget(self, action: #selector(didTapStartButton), for: .touchUpInside)
    }
    
    private func style() {
        backgroundColor = .blue
    }
    
    private func layout() {
        translatesAutoresizingMaskIntoConstraints =  false
        backgroundImage.pinToEdges(of: self)
        NSLayoutConstraint.activate([
            logoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -40),
            titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: -18),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant: -40),
            startButton.heightAnchor.constraint(equalToConstant: 67),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90)
        ])
    }
}
