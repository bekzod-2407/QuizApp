//
//  MainView.swift
//  QuizApp
//
//  Created by Bekzod Qahhorov on 20/07/22.
//

import UIKit

class MainView: UIView {
    private lazy var mainStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [scoreLabel,questionLabel,buttonStack])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 20
        view.distribution = .fill
        return view
    }()

 
    private lazy var scoreLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Score 0"
        view.font = .monospacedSystemFont(ofSize: 18, weight: .medium)
        view.textColor = .systemGray6
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        return view
    }()
    
    private lazy var questionLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "What's your name What's your name What's your nameWhat's your name What's your name"
        view.font = .monospacedSystemFont(ofSize: 26, weight: .medium)
        view.textColor = .systemGray6
        view.numberOfLines =  0
        return view
    }()
    
    private lazy var buttonStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [trueButton,falseButton])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 20
        view.distribution = .fillEqually
        return view
    }()
    
    private lazy var trueButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("TRUE", for: .normal)
        view.tintColor = .black
        view.titleLabel?.font = .monospacedSystemFont(ofSize: 18, weight: .semibold)
        view.layer.borderWidth = 3
        view.layer.borderColor = CGColor(red: 107, green: 219, blue: 153, alpha: 1)
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
    private lazy var falseButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("FALSE", for: .normal)
        view.titleLabel?.font = .monospacedSystemFont(ofSize: 18, weight: .semibold)
        view.layer.borderWidth = 3
        view.layer.borderColor = CGColor(red: 107, green: 215, blue: 153, alpha: 1)
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
       
    }
    
    private func setupSubViews() {
        self.addSubview(mainStack)
        
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            mainStack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            mainStack.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -20),
            mainStack.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -10),
            
            trueButton.heightAnchor.constraint(equalToConstant: 60),
            falseButton.heightAnchor.constraint(equalToConstant: 70)
        ])
    }

}
