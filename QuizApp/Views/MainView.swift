//
//  MainView.swift
//  QuizApp
//
//  Created by Bekzod Qahhorov on 20/07/22.
//

import UIKit

class MainView: UIView {
 
    private lazy var scoreLabel: UILabel = {
        var view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Score 0"
        view.font = .monospacedSystemFont(ofSize: 18, weight: .medium)
        view.textColor = .systemGray6
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
    
        return view
    }()
    private lazy var falseButton: UIButton = {
        var view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
     
        return view
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
