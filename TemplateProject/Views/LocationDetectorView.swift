//
//  LocationDetectorView.swift
//  TemplateProject
//
//  Created by Nick Bouldien on 7/31/17.
//  Copyright © 2017 Adam Arthur. All rights reserved.
//

import UIKit

class LocationDirectorView : UIViewController {
    
//    var circleWidth: CGFloat = 50
//    var circleHeight: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "face_360.png")
        let theImage: UIImageView = UIImageView(image: image)

        
        view.backgroundColor = UIColor.orange
        theImage.backgroundColor = UIColor.clear
        theImage.frame = CGRect(x: ((self.view.bounds.size.width  - theImage.frame.size.width) / 2.0), y: ((self.view.bounds.size.height  - theImage.frame.size.height) / 2.0), width: 200, height: 200)
        
        view.addSubview(theImage)
        theImage.frame.origin.y = ((self.view.bounds.size.height  - theImage.frame.size.height) / 2.0)
        theImage.frame.origin.x = ((self.view.bounds.size.width  - theImage.frame.size.width) / 2.0)

        
//        circle.frame = CGRect(x: ((self.view.bounds.size.width/2.0 - circleWidth/2.0)), y: ((self.view.bounds.size.height/2.0 - circleHeight/2.0)), width: circleWidth, height: circleHeight)
//
//        view.addSubview(circle)

//        animateIn()
//        animateOut()

    }
    
//    func animateIn() {
//        UIView.animate(withDuration: 0.5, delay: 0.4,
//                       options: .curveEaseOut, animations: {
//                        self.circle.frame = CGRect(x: ((self.view.bounds.size.width/2.0 - self.circleWidth)), y: ((self.view.bounds.size.height/2.0 - self.circleHeight)), width: self.circleWidth*4, height: self.circleHeight*4)
//                        self.circle.alpha = 0.1
//                        
//        }, completion: {_ in self.animateOut()})
//    }
//
//    func animateOut() {
//        UIView.animate(withDuration: 1.2, delay: 1.0,
//                       options: .curveEaseOut, animations: {
//                        self.circle.frame = CGRect(x: ((self.view.bounds.size.width/2.0 - self.circleWidth)), y: ((self.view.bounds.size.height/2.0 - self.circleHeight)), width: self.circleWidth*2, height: self.circleHeight*2)
//                        self.circle.alpha = 0.9
//                        
//        }, completion: {_ in self.animateIn()})
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
