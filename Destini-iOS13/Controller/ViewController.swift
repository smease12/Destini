//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let Stories = [Story(title: "You see a fork in the road.",
                         choice1: "Take a left.",
                         choice2: "Take a right."),
                   Story(title: "You see a tiger.",
                                     choice1: "Shout for help.",
                                     choice2: "Play dead."),
                   Story(title: "You find a treasure chest.",
                                     choice1: "Open it.",
                                     choice2: "Check for traps.")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(storyIndex: 0)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let buttonTitle = sender.titleLabel?.text
        
        if buttonTitle == Stories[0].choice1{
            updateUI(storyIndex: 1)
        }
        else if buttonTitle == Stories[0].choice2{
            updateUI(storyIndex: 2)
        }
    }
    
    func updateUI(storyIndex: Int){
        storyLabel.text = Stories[storyIndex].title
        choice1Button.setTitle(Stories[storyIndex].choice1, for: .normal)
        choice2Button.setTitle(Stories[storyIndex].choice2, for: .normal)
    }
    
}

