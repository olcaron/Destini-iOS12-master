//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex : Int = 1
    let allStory = StoryBank()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        updateUI()
        restartButton.isHidden = true
        
    }// fin de viewDidLoad

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        if sender.tag == 1 {
            if storyIndex == 1 {
                // si on clique le bouton du haut, on affiche les bouts d'histoire "3"
                storyIndex = 3
                updateUI()
            } // fin du if
            else if storyIndex == 3 {
                storyIndex = 6
                topButton.isHidden = true
                bottomButton.isHidden = true
                updateUI()
            } // fin du else if
            else if storyIndex == 2 {
                storyIndex = 3
                updateUI()
            }// fin du else if
        } // fin du if
        else if sender.tag == 2 {
            if storyIndex == 1 {
                // si on clique le bouton du bas, on affiche les bouts d'histoire "2"
                storyIndex = 2
                updateUI()
            } // fin du if
            else if storyIndex == 2 {
                storyIndex = 4
                topButton.isHidden = true
                bottomButton.isHidden = true
                updateUI()
            } // fin du else if
            else if storyIndex == 3 {
                storyIndex = 5
                topButton.isHidden = true
                bottomButton.isHidden = true
                
                updateUI()
            }
        }// fin du else if
        
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6 {
            restartButton.isHidden = false
        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story
    }// fin de buttonPressed
    
    // methode qui permet de mettre a jour les interfaces graphiques dépendant a quel partie de l'histoire on est
    func updateUI() {
        // mise a jour du text
        storyTextView.text = allStory.list[storyIndex - 1].storyText
        
        //mise a jour du bouton du haut
        topButton.setTitle(allStory.list[storyIndex - 1].optionA, for: .normal)
        // mise a jour du bouton du bas
        bottomButton.setTitle(allStory.list[storyIndex - 1].optionB, for: .normal)
        
    }
    
    
    
    @IBAction func restartPressed(_ sender: UIButton) {
        restart()
    }// fin de restartPressed
    
    func restart() {
        storyIndex = 1
        storyTextView.text = allStory.list[storyIndex - 1].storyText
        
        // remettre les boutons visibles
        topButton.isHidden = false
        bottomButton.isHidden = false
        
        //mise a jour du bouton du haut et celui du bas
        topButton.setTitle(allStory.list[storyIndex - 1].optionA, for: .normal)
        bottomButton.setTitle(allStory.list[storyIndex - 1].optionB, for: .normal)
    }// fin de restart


}// fin de UIViewController

