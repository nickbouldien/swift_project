//
//  ChatScene.swift
//  TemplateProject
//
//  Created by Nick Bouldien on 8/2/17.
//  Copyright © 2017 Adam Arthur. All rights reserved.
//

import UIKit

class ChatScene : UIController, MessageTableViewProtocol {
    
    var messageTableView = MessageTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageTableView.delegate      =   messageTableView
        messageTableView.dataSource    =   messageTableView
        messageTableView.myDelegate    =   self
//        circleControl.circleDelegate   =   self

        
        
        messageTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        
        messageTableView.backgroundColor = UIColor.yellow
        messageTableView.frame = CGRect(x: 50, y: 50, width: 300, height: 500)
        view.addSubview(messageTableView);

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func userSelectedHarryPotterCharacter(characterName: String) {
        print(characterName);
    }
    
//    func changeCircleSize() {
//        print("being touched")
//    }
    
    
    
    
    
}
