//
//  ViewController.swift
//  Destini-iOS13
//
// Created by MD ABIR HOSSAIN on 25-12-2023 at 6:34 PM
// Website: https://mdabirhossain.com/
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
    }
    
    func nextStory() {
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.story[storyBrain.storyNumber].title
        
        choice1Button.setTitle(storyBrain.story[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[storyBrain.storyNumber].choice2, for: .normal)
    }
    
    
}

