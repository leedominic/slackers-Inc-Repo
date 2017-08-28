//
//  ViewController.swift
//  DontScrewUp
//
//  Created by Wong Hong Ngai on 21/8/17.
//  Copyright © 2017 Wong Hong Ngai. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {
    @IBOutlet weak var Continue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        
        // TODO(developer) Configure the sign-in button look/feel
        let googleButton = GIDSignInButton()
        googleButton.frame = CGRect(x :16, y: 116, width: view.frame.width - 32, height: 100)
        view.addSubview(googleButton)
        
        Continue.isHidden = true
        
        if Auth.auth().currentUser != nil {
            Continue.isHidden = false
        } else {
        Continue.isHidden = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

