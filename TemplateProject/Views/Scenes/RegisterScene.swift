//
//  RegisterScene.swift
//  TemplateProject
//
//  Created by Nick Bouldien on 8/7/17.
//  Copyright © 2017 Adam Arthur. All rights reserved.
//

import UIKit

class RegisterScene: UIViewController {
    
    var backgroundImageView:UIImageView = UIImageView()
    var imageView:UIImageView = UIImageView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundImage("background.png")
        addStaticImage("camera-img1.png", xPos: 85.0, yPos: 170.0, width: 220.0, height: 220.0)
        addStaticImage("Combined Shape-lg.png", xPos: 0.0, yPos: 524.0, width: 414.0, height: 112.0)
        let button = addButton(title: "button Title", image: "CountDown-button.png", action: #selector(RegisterScene.buttonPressed))
        button.frame = CGRect(x: 100, y: 420, width: 200, height: 50)
        
        let infoButton = addButton(title: "", image: "info-icon.png", action: #selector(RegisterScene.buttonPressed))
        infoButton.frame = CGRect(x: 320, y: 20, width: 50, height: 50)
   
        let menuButton = addButton(title: "", image: "Menue-icon.png", action: #selector(RegisterScene.buttonPressed))
        menuButton.frame = CGRect(x: 20, y: 20, width: 50, height: 50)
        
        
//        let cancelButton = addButton(title: "", image: "Cancel-button.png", action: #selector(RegisterScene.buttonPressed))
//        cancelButton.frame = CGRect(x: 80, y: 520, width: 50, height: 50)

//        let acceptButton = addButton(title: "", image: "Accept-button.png", action: #selector(RegisterScene.buttonPressed))
//        acceptButton.frame = CGRect(x: 250, y: 520, width: 50, height: 50)
//        

    }
    
    func setBackgroundImage(_ imageName: String) {
        let screenSize: CGRect = UIScreen.main.bounds
        let backgroundImage = UIImage(named: imageName)
        let imageView = UIImageView(image: backgroundImage)
        imageView.frame = screenSize
        self.backgroundImageView = imageView
        self.view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    
    
    func addStaticImage(_ imageName: String, xPos: CGFloat, yPos: CGFloat, width: CGFloat, height: CGFloat) -> UIImageView {
        let staticImage = UIImage(named: imageName)
        let staticImageView = UIImageView(image: staticImage)
        staticImageView.frame = CGRect(x: xPos, y: yPos, width: width, height: height)
        
        self.imageView = staticImageView
        self.view.addSubview(imageView)
        
        return staticImageView
    }
    
    func addButton(title: String, image: String, action: Selector) -> UIButton {
        // addButton (function overloading)
        // call add button
        let button = addButton(action)
        // take the return value and add a title string
        button.setTitle(title, for: .normal)
        // and an image
        let img = UIImage(named: image)
        button.setImage(img, for: .normal)
        
        return button
        
    }
    
    func addButton(_ functionThatIsCalled: Selector) -> UIButton {
        
        let button = UIButton() //frame: CGRect(x: 160, y: 420, width: 100, height: 70)
//        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: functionThatIsCalled, for: .touchDown)
        view.addSubview(button)
        return button
    }
    
    func buttonPressed() { // "call back function" called by addButton
        print("button was pressed")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
}
