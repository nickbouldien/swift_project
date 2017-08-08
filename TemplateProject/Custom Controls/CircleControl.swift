////
////  CircleControl.swift
////  TemplateProject
////
////  Created by Adam Arthur on 7/26/17.
////  Copyright © 2017 Adam Arthur. All rights reserved.
////
//
//import UIKit
//
//

//
//class CircleControl : UIView {
//    
//    let circleDelegate: CicleControlProtocol?
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CircleControl.tap))
//        self.addGestureRecognizer(tapGesture)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    //  This class is going to draw a circle
//    
//    //  Do take a UIView and make it into a circle, we need to override drawRect
//    
//    override func draw(_ rect: CGRect) {
//        //  Insert override code here.
//
//        UIColor.black.setFill()
//        let circlePath = UIBezierPath(ovalIn: rect);
//        circlePath.fill()
//        
//        // Cool!  Now we've got something.
//    }
//    
////    func changeCircleSize(){
////        print("changing")
////    }
//    
////    func tap(recognizer: UITapGestureRecognizer) {
////        if recognizer.state == UITapGestureRecognizerState.ended {
////            circleDelegate?.changeCircleSize()
////        }
////    }
//
//    
//    
//    
////    func animateCircleIn () {
//////        UIView.animate(withDuration: 1, animations: {
//////            self.bonacinno.frame.size.width += 10
//////            self.bonacinno.frame.size.height += 10
//////        }, completion: nil)
////    }
////    
////    func animateCircleOut () {
////        //        UIView.animate(withDuration: 1, animations: {
////        //            self.bonacinno.frame.size.width += 10
////        //            self.bonacinno.frame.size.height += 10
////        //        }, completion: nil)
////    }
//    
//}
