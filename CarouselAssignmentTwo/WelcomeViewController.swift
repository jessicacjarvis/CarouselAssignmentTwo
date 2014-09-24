//
//  WelcomeViewController.swift
//  CarouselAssignmentTwo
//
//  Created by Jessica Jarvis on 9/19/14.
//  Copyright (c) 2014 Jessica Jarvis. All rights reserved.
//

import UIKit



class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    @IBOutlet weak var welcomePageControl: UIPageControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(welcomeScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        welcomePageControl.currentPage = 1
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
