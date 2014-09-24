//
//  SignInPageViewController.swift
//  CarouselAssignmentTwo
//
//  Created by Jessica Jarvis on 9/19/14.
//  Copyright (c) 2014 Jessica Jarvis. All rights reserved.
//

import UIKit

class SignInPageViewController: UIViewController {

  
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var signInButton: UIButton!

    
    @IBOutlet weak var signInScrollView: UIScrollView!
    
    
    @IBAction func onSignInButton(sender: AnyObject) {
        
        if (self.emailTextField.text == "email") && (self.passwordTextField.text == "password") {
            
            delay(2, closure: { () -> () in
                self.performSegueWithIdentifier("signInToWelcomeSegue", sender: self)

            })
            
            var signAlertView = UIAlertView(title: "Signing In...", message: nil, delegate: nil, cancelButtonTitle: nil)
            signAlertView.show()
            
            delay(2, closure: { () -> () in
                signAlertView.dismissWithClickedButtonIndex(0, animated: true)
            })
            
        }
        
        else if (self.emailTextField.text == "") || (self.passwordTextField.text == "") {
            var emptyAlertView = UIAlertView(title: "Email & Password Required", message: "Please enter your email and password", delegate: nil, cancelButtonTitle: "Try again")
            emptyAlertView.show()
            
            
        }
        
        else {
            
            var sign2AlertView = UIAlertView(title: "Signing In...", message: nil, delegate: nil, cancelButtonTitle: nil)
            sign2AlertView.show()
            
            delay(2, closure: { () -> () in
                sign2AlertView.dismissWithClickedButtonIndex(0, animated: true)

                
            var wrongAlertView = UIAlertView(title: "Sign In Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "Try again")
            wrongAlertView.show()
            })
            
            
        }


    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
 
        
    }
    
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
        

    @IBAction func clickBackToSignInPage(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
    }
    
        
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var kbOne : CGFloat = CGFloat(kbSize.height)
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
        
            self.signInScrollView.contentOffset.y = kbOne/2
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var kbOne : CGFloat = CGFloat(kbSize.height)
        
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            
            self.signInScrollView.contentOffset.y = 0
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
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
