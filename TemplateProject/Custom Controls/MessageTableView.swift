//
//  MessageTableView.swift
//  TemplateProject
//
//  Created by Nick Bouldien on 8/2/17.
//  Copyright © 2017 Adam Arthur. All rights reserved.
//

import Foundation
import UIKit


    protocol MessageTableViewProtocol {
        func userSelectedHarryPotterCharacter(characterName: String)
    }


class MessageTableView : UITableView, UITableViewDelegate, UITableViewDataSource {
    
    var myDelegate: MessageTableViewProtocol?
    
    let names: [String] = ["Hermione", "Harry", "Ginny", "Ron", "jeremy"]
    
    
    override func numberOfRows(inSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count //return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.dequeueReusableCell(withIdentifier: "cell")!
        let bkColor = UIColor(red: 196/255, green: 209/255, blue: 148/255, alpha: 0.7)
        cell.textLabel?.text = self.names[indexPath.section]
        cell.backgroundColor = bkColor
        cell.textLabel?.font = UIFont(name: "Arial", size: 22)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(self.names[indexPath.section])
        myDelegate?.userSelectedHarryPotterCharacter(characterName: self.names[indexPath.section])
    }
    
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        print("section: \(indexPath.section)")
////        print("row: \(indexPath.row)")
//        print(names[indexPath.section])
//    }
    
    
    
}
