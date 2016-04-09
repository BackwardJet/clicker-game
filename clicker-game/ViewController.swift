//
//  ViewController.swift
//  clicker-game
//
//  Created by Tej Vuligonda on 3/26/16.
//  Copyright © 2016 Tej Vuligonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    // Outlets
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {

            logoImgView.hidden = true
            howManyTapsTxt.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            // ! means that we are guaranteeing that howManyTapsTxt.text has text
            currentTaps = 0
            
            tapsLabel.text = "\(currentTaps) Taps"

        }
    }
    
    @IBAction func onClickerButtonPressed(sender: UIButton!) {
        currentTaps++
        tapsLabel.text = "\(currentTaps) Taps"
        
        if isGameOver() {
            restartGame()
            
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImgView.hidden = false
        howManyTapsTxt.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
    }
    
    
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        return false
    }
    
    


}

