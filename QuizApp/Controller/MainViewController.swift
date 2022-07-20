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
    }
     private func setupSubViews() {
        view.addSubview(mainContentView)
        view.backgroundColor = Colors.mainColor.color
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
        btn.alpha = 0.7
        guard let title = btn.currentTitle else {return}
        
       let rightAnswer = quizBrain.checkAnswer(title)
       
        if rightAnswer {
            btn.backgroundColor = Colors.greenColor.color
        } else {
            btn.backgroundColor =  Colors.redColor.color
        }
        quizBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: false)
        updateUI()
    }
    private func updateUI() {
        mainContentView.scoreLabel.text = quizBrain.getScore()
        mainContentView.questionCountLabel.text = quizBrain.getCurrentQuestionNumber()
        mainContentView.questionLabel.text = quizBrain.getQuestion()
        mainContentView.progressBar.progress = quizBrain.getProgress()
    }
    @objc private func updateTimer() {
        mainContentView.falseButton.backgroundColor = .clear
        mainContentView.trueButton.backgroundColor = .clear
        mainContentView.falseButton.alpha = 1
        mainContentView.trueButton.alpha = 1
    }
}

