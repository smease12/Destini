//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    
    var storyNumber = 0
    
    let Stories = [Story(title: "You see a fork in the road.",
                         choice1: "Take a left.",
                         choice2: "Take a right."),
                   Story(title: "You see a tiger.",
                                     choice1: "Shout for help.",
                                     choice2: "Play dead."),
                   Story(title: "You find a treasure chest.",
                                     choice1: "Open it.",
                                     choice2: "Check for traps.")]
    
    func getTitle() -> String{
        return Stories[storyNumber].title
    }
    
    func getChoice1() -> String{
        return Stories[storyNumber].choice1
    }
    
    func getChoice2() -> String{
        return Stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        if userChoice == Stories[0].choice1{
            storyNumber = 1
        }
        else if userChoice == Stories[0].choice2{
            storyNumber = 2
        }
    }
    
}
