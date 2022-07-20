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

 
     lazy var scoreLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Score 0"
        view.font = .monospacedSystemFont(ofSize: 18, weight: .medium)
        view.textColor = .systemGray6
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        return view
    }()
    
     lazy var questionLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "What's your name What's your name What's your nameWhat's your name What's your name"
        view.font = .monospacedSystemFont(ofSize: 26, weight: .medium)
        view.textColor = .systemGray6
        view.numberOfLines =  0
        return view
    }()
    
    private lazy var buttonStack: UIStackView = {
        var view = UIStackView(arrangedSubviews: [trueButton,falseButton, progressBar])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 20
        view.distribution = .fillProportionally
        return view
    }()
    
     lazy var trueButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("TRUE", for: .normal)
        view.tintColor = .black
        view.titleLabel?.font = .monospacedSystemFont(ofSize: 24, weight: .semibold)
        view.layer.borderWidth = 3
        view.layer.borderColor = CGColor(red: 107, green: 219, blue: 153, alpha: 1)
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
     lazy var falseButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("FALSE", for: .normal)
        view.titleLabel?.font = .monospacedSystemFont(ofSize: 24, weight: .semibold)
        view.layer.borderWidth = 3
        view.layer.borderColor = CGColor(red: 107, green: 215, blue: 153, alpha: 1)
        view.layer.cornerRadius = 15
        view.clipsToBounds = true
        return view
    }()
    
    lazy var progressBar: UIProgressView = {
       var view = UIProgressView()
       view.translatesAutoresizingMaskIntoConstraints = false
        view.progress = 0.5
        view.progressTintColor = .systemPink
        view.trackTintColor = Colors.labelColor.color
        view.layer.cornerRadius = 15
        view.clipsToBounds =  true
       return view
   }()
    
    lazy var bgImage: UIImageView = {
        var view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = Images.mainBgBubbles.image
        view.contentMode = .scaleAspectFill
        
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
        self.addSubview(bgImage)
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            mainStack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            mainStack.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -20),
            mainStack.bottomAnchor.constraint(equalTo: bgImage.topAnchor),
            
            trueButton.heightAnchor.constraint(equalToConstant: 60),
            falseButton.heightAnchor.constraint(equalToConstant: 60),
            progressBar.heightAnchor.constraint(equalToConstant: 10),
            
            bgImage.leftAnchor.constraint(equalTo: self.leftAnchor),
            bgImage.rightAnchor.constraint(equalTo: self.rightAnchor),
            bgImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bgImage.heightAnchor.constraint(equalToConstant: 20),
        ])
    }

}
