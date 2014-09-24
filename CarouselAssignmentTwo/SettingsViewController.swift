//
//  SettingsViewController.swift
//  CarouselAssignmentTwo
//
//  Created by Jessica Jarvis on 9/20/14.
//  Copyright (c) 2014 Jessica Jarvis. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingScrollView: UIScrollView!
    
    @IBOutlet weak var settingsImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        settingScrollView.contentSize = settingsImageView.frame.size
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onCloseButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
