//
//  QuizBrain.swift
//  QuizApp
//
//  Created by Bekzod Qahhorov on 20/07/22.
//

import Foundation

struct QuizBrain {
    var  rightAnswerCount = 0
    var quizNumber = 0
    let quiz = [
        Question(q: "A slug's blood is green.", a: "TRUE"),
        Question(q: "Approximately one quarter of human bones are in the feet.", a: "TRUE"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "TRUE"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "TRUE"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "FALSE"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "TRUE"),
        Question(q: "You can lead a cow down stairs but not up stairs.", a: "FALSE"),
        Question(q: "Google was originally called 'Backrub'.", a: "TRUE"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "TRUE"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "FALSE"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "FALSE"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "TRUE")
    ]
    
    func  checkAnswer(_ answer: String) {
        if answer == quiz[quizNumber].answer {
            
        } else {
            
        }
    }
}
