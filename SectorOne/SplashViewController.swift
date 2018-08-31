//
//  GameViewController.swift
//  SectorOne
//
//  Created by George McMullen on 8/16/16.
//  Copyright (c) 2016 Binary Imaginations. All rights reserved.
//

import UIKit
import SpriteKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addBackgroundImage()
        addLogo()
        
        // Show the home screen after a bit. Calls the show() function.
        //_ = Timer.scheduledTimerWithTimeInterval(4.0, target: self, selector: #selector(show), userInfo: nil, repeats: false)
        
        // Swift >=3 selector syntax
        _ = Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(self.update), userInfo: nil, repeats: false)

    }
    
    override func viewDidAppear(_ animated: Bool) {


    }
    
    override func viewWillAppear(_ animated: Bool) {


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "SegueToMainViewController")
        {
            var _ : MainViewController = segue.destination as! MainViewController
        }
        
    }
    
    /*
     * Shows the app's main home screen.
     * Gets called by the timer in viewDidLoad()
     */
    @objc func update() {
        self.performSegue(withIdentifier: "SegueToMainViewController", sender: self)
    }
    
    /*
     * Adds background image to the splash screen
     */
    func addBackgroundImage() {
        let screenSize: CGRect = UIScreen.main.bounds
        
        let bg = UIImage(named: "splash_640_960.png")
        let bgView = UIImageView(image: bg)
        
        bgView.frame = CGRect(x:0, y:0, width:screenSize.width, height:screenSize.height)
        self.view.addSubview(bgView)
    }
    
    /*
     * Adds logo to splash screen
     */
    func addLogo() {
        let screenSize: CGRect = UIScreen.main.bounds
        
        let logo     = UIImage(named: "logo.png")
        let logoView = UIImageView(image: logo)
        
        let w = (logo?.size.width)!/2
        let h = (logo?.size.height)!/2
        
        logoView.frame = CGRect(x:(screenSize.width/2) - (w/2), y: 5, width: w, height: h )
        self.view.addSubview(logoView)
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
