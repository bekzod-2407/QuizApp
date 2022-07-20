//
//  ViewController.swift
//  QuizApp
//
//  Created by Bekzod Qahhorov on 20/07/22.
//

import UIKit

class MainViewController: UIViewController {
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    private lazy var mainContentView:  MainView =  {
        var view = MainView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubViews()
        view.backgroundColor = Colors.mainColor.color
    }
    
    
    private func setupSubViews() {
        view.addSubview(mainContentView)
        updateUI()
        NSLayoutConstraint.activate([
            mainContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainContentView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            mainContentView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            mainContentView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor ),
        ])
        mainContentView.trueButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        mainContentView.falseButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
//MARK: - Logic functions
    @objc func buttonTapped(_ btn: UIButton) {
       
        let title = btn.currentTitle
        quizBrain.checkAnswer(title)
        btn.alpha = 0.7
        if title == answer {
            btn.backgroundColor = Colors.greenColor.color
            
           rightAnswerCount += 1
        } else {
            btn.backgroundColor =  Colors.redColor.color
        }
        if quizNumber < quiz.count-1{
           
           quizNumber += 1
        } else {
            rightAnswerCount = 0
            quizNumber = 0
        }
        
        updateUI()
    }
    
    private func updateUI() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: false)
        mainContentView.questionLabel.text = quiz[quizNumber].question
    }
    @objc func updateTimer() {
        mainContentView.scoreLabel.text = "Score: \(rightAnswerCount)"
        mainContentView.questionCountLabel.text = "  Question: \(quizNumber+1)"
        mainContentView.progressBar.progress = Float(quizNumber + 1) / Float(quiz.count)
        mainContentView.falseButton.backgroundColor = .clear
        mainContentView.trueButton.backgroundColor = .clear
        mainContentView.falseButton.alpha = 1
        mainContentView.trueButton.alpha = 1
    }
}

