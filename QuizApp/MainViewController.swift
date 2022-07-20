//
//  ViewController.swift
//  QuizApp
//
//  Created by Bekzod Qahhorov on 20/07/22.
//

import UIKit

class MainViewController: UIViewController {

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
        
        NSLayoutConstraint.activate([
            mainContentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainContentView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            mainContentView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            mainContentView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor ),
            

        ])
    }
}

