//
//  LessonsTableViewViewController.swift
//  Brainwar like game
//
//  Created by Ербол Каршыга on 7/28/16.
//  Copyright © 2016 Yerbol Karshyga. All rights reserved.
//

import UIKit
@IBDesignable
class LessonsTableViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var levelsArray = ["10", "9", "8", "7", "6", "5", "4", "3", "2", "1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bottomColor = UIColor(red: (244/255), green: (67/255), blue: (54/255), alpha: 1)
        let thirdColor = UIColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1)
        let gradientColors : [CGColor] = [thirdColor.CGColor,  bottomColor.CGColor]
        let gradientLocations :[Float] = [0.0, 1.0]
        let gradientLayer : CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 1)
        tableViewLessons.delegate = self
        tableViewLessons.dataSource = self
        tableViewLessons.contentOffset = CGPointMake(0, CGFloat.max)
        // Do any additional setup after loading the view.
        let dot: UIImageView = UIImageView(frame: CGRectMake(0, 6, 400, 167))
        dot.image = UIImage(named: "cloud_3___vector_by_littlponyfriends-d7s2ipz.png")!
        self.view!.addSubview(dot)
            }

    @IBOutlet weak var tableViewLessons: UITableView!
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return levelsArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellLevel", forIndexPath: indexPath) as! CustomCellTableViewCell
        
        cell.levelLabel.text = levelsArray[indexPath.row]
        print (cell.levelLabel.text)
        
        
        return cell
    }
    
    
    
    
    
}
