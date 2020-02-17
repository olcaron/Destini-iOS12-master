//
//  Story.swift
//  Destini
//
//  Created by Olivier Caron on 2019-02-22.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    let storyText : String
    let optionA : String
    let optionB : String
    
    init(text : String, answerA : String, answerB : String ) {
        storyText = text
        optionA = answerA
        optionB = answerB
    }// fin de l'initialisation
    
}// fin de Story
