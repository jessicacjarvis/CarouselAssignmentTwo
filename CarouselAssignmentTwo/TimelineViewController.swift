//
//  TimelineViewController.swift
//  CarouselAssignmentTwo
//
//  Created by Jessica Jarvis on 9/20/14.
//  Copyright (c) 2014 Jessica Jarvis. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var timelineImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timelineScrollView.contentSize = timelineImage.frame.size

        // Do any additional setup after loading the view.
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
