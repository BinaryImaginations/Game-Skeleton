//
//  GameViewController.swift
//  SectorOne
//
//  Created by George McMullen on 8/16/16.
//  Copyright (c) 2016 Binary Imaginations. All rights reserved.
//

import UIKit
import SpriteKit

class DifficutlyViewController: UIViewController {
    
    @IBOutlet weak var buttonEasy: UIButton!
    @IBOutlet weak var buttonMedium: UIButton!
    @IBOutlet weak var buttonHard: UIButton!
    @IBOutlet weak var buttonExtreme: UIButton!
    
    @IBOutlet weak var SelectDifficulty: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
    
//    @IBAction func buttonSelectEasy(sender: AnyObject) {
//      // Set the difficutly setting for the game
//        self.performSegue(withIdentifier: "SegueGameViewController", sender: self)
//    }
    
//    @IBAction func buttonSelectMedium(sender: AnyObject) {
//        self.performSegue(withIdentifier: "SegueGameViewController", sender: self)
//    }
    
    
 //   @IBAction func buttonSelectHard(sender: AnyObject) {
 //       self.performSegue(withIdentifier: "SegueGameViewController", sender: self)
 //   }
    
    
//    @IBAction func buttonSelectExtreme(sender: AnyObject) {
//        self.performSegue(withIdentifier: "SegueGameViewController", sender: self)
//    }

    
 
 //    @IBAction func buttonSelectHardDifficulty(sender: AnyObject) {
 //       self.performSegue(withIdentifier: "SegueDifficultyScreen", sender: self)
 //   }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
