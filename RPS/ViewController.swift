//
//  ViewController.swift
//  RPS
//
//  Created by Daniel Souza Affonso Ferreira on 09/10/17.
//  Copyright © 2017 Daniel Souza Affonso Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(state: GameState.start)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI(state: GameState) {
        switch state {
        case .start:
            topMost.text = "🤷‍♀️"
            playAgain.isHidden = true
            rockSign.isHidden = paperSign.isHidden = scissorsSign.isHidden = false
        case .win:
            
        case .lose:
        case .draw:
            
        }
    }

    @IBOutlet weak var topMost: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var rockSign: UIButton!
    @IBOutlet weak var paperSign: UIButton!
    @IBOutlet weak var scissorsSign: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    @IBAction func rockClicked(_ sender: UIButton) {
    }
    @IBAction func paperClicked(_ sender: UIButton) {
    }
    @IBAction func scissorsClicked(_ sender: UIButton) {
    }
    @IBAction func playAgainClicked(_ sender: UIButton) {
    }
    
    
}

