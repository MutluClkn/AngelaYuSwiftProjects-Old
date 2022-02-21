//
//  ViewController.swift
//  Quizzler
//
//  Recreated by Mutlu Calkan on 21/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = true
    var questionNumberInArray : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[questionNumberInArray]
        questionLabel.text = firstQuestion.questionText
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNumberInArray >= 12 {
            return
        }else {
            questionNumberInArray += 1
            questionLabel.text = allQuestions.list[questionNumberInArray].questionText
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumberInArray].answer
        if correctAnswer == pickedAnswer {
            // Correct
            
        }
        else {
            // Wrong
            
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
