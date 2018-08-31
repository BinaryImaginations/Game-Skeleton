//
//  GameViewController.swift
//  SectorOne
//
//  Created by George McMullen on 8/16/16.
//  Copyright (c) 2016 Binary Imaginations. All rights reserved.
//

import UIKit
import SpriteKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var SelectDifficulty: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
//    @IBAction func buttonSelectDifficulty(sender: AnyObject) {
//        self.performSegue(withIdentifier: "SegueDifficultyViewController", sender: self)
//        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
