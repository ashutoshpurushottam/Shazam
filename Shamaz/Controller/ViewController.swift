//
//  ViewController.swift
//  Shamaz
//
//  Created by Ashutosh Purushottam on 15/03/19.
//  Copyright © 2019 Ashutosh Purushottam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var dreamButton: UIButton!
    @IBOutlet weak var reflectButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        getReadyForPlay()
    }
    
    
    @IBAction func playerPressesButton(_ sender: UIButton) {
        if(sender.tag == 0) {
            quoteLabel.text = Utility.generateQuote(isPast: false)
        } else {
            quoteLabel.text = Utility.generateQuote(isPast: true)
        }
        setButtonsForPlayerSelection()
    }
    
    @IBAction func selectPlayer(_ sender: Any) {
        getReadyForPlay()
    }
    
    func getReadyForPlay() {
        showMessageForPlayer()
        setButtonsForPlay()
    }
    
    func showMessageForPlayer() {
        let randomPlayer = Int.random(in: 1...10)
        quoteLabel.text = "Player \(randomPlayer). It is your turn!"
    }
    
    
    func setButtonsForPlayerSelection() {
        nextButton.isEnabled = true
        dreamButton.isEnabled = false
        reflectButton.isEnabled = false
    }
    
    func setButtonsForPlay() {
        nextButton.isEnabled = false
        dreamButton.isEnabled = true
        reflectButton.isEnabled = true
    }
}

