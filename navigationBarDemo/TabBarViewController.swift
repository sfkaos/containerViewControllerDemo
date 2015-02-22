//
//  TabBarViewController.swift
//  navigationBarDemo
//
//  Created by Win Raguini on 2/21/15.
//  Copyright (c) 2015 Win Inc. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    var firstViewController: UIViewController!
    var secondViewController: UIViewController!
    var thirdViewController: UIViewController!

    var currentViewController: UIViewController!

    @IBOutlet weak var containerView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        firstViewController = storyboard.instantiateViewControllerWithIdentifier("FirstViewController") as UIViewController
        secondViewController = storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as UIViewController
        thirdViewController = storyboard.instantiateViewControllerWithIdentifier("ThirdViewController") as UIViewController

        addChildViewController(firstViewController)
        addChildViewController(secondViewController)
        addChildViewController(thirdViewController)

//        firstViewController.view.frame = containerView.frame
//        containerView.addSubview(firstViewController.view)
//
//        secondViewController.view.frame = containerView.frame
//        secondViewController.view.frame.origin.x = 320
//        containerView.addSubview(secondViewController.view)
//
//        thirdViewController.view.frame = containerView.frame
//        thirdViewController.view.frame.origin.x = 640
//        containerView.addSubview(thirdViewController.view)
//
//        containerView.contentSize = CGSize(width: 320 * 3, height: containerView.frame.height)
//
//        currentViewController = firstViewController
//        firstViewController.view.frame = containerView.frame
//        containerView.addSubview(firstViewController.view)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPurpleBtn(sender: AnyObject) {
//        if currentViewController != firstViewController {
//        transitionFromViewController(currentViewController, toViewController: firstViewController, duration: 5.0, options: nil, animations:{
//            self.firstViewController.view.frame = self.containerView.frame
//            self.containerView.addSubview(self.firstViewController.view)
//            }, completion:{finished in
//            self.currentViewController = self.firstViewController
//        })
//        }
        firstViewController.beginAppearanceTransition(true, animated: true)
        self.firstViewController.view.frame = self.containerView.frame
        self.containerView.addSubview(self.firstViewController.view)
        self.firstViewController.didMoveToParentViewController(self)
        firstViewController.endAppearanceTransition()


    }

    


    @IBAction func onGreenBtn(sender: AnyObject) {
//        if currentViewController != secondViewController {
//            transitionFromViewController(currentViewController, toViewController: secondViewController, duration: 5.0, options: nil, animations:{
//                self.secondViewController.view.frame = self.containerView.frame
//                self.containerView.addSubview(self.secondViewController.view)
//                }, completion:{finished in
//                self.currentViewController = self.secondViewController
//            })
//        }
        secondViewController.beginAppearanceTransition(true, animated: true)
        self.secondViewController.view.frame = self.containerView.frame
        self.containerView.addSubview(self.secondViewController.view)
        self.secondViewController.didMoveToParentViewController(self)
        secondViewController.endAppearanceTransition()

    }

    @IBAction func onRedBtn(sender: AnyObject) {
//        if currentViewController != thirdViewController {
//        transitionFromViewController(currentViewController, toViewController: thirdViewController, duration: 5.0, options: nil, animations:{
//            self.thirdViewController.view.frame = self.containerView.frame
//            self.containerView.addSubview(self.thirdViewController.view)
//            }, completion:{finished in
//            self.currentViewController = self.thirdViewController
//        })
//        }
        thirdViewController.beginAppearanceTransition(true, animated: true)
        self.thirdViewController.view.frame = self.containerView.frame
        self.containerView.addSubview(self.thirdViewController.view)
        self.thirdViewController.didMoveToParentViewController(self)
        thirdViewController.endAppearanceTransition()

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
