//
//  CustomCellTableViewCell.swift
//  Brainwar like game
//
//  Created by Ербол Каршыга on 7/28/16.
//  Copyright © 2016 Yerbol Karshyga. All rights reserved.
//

import UIKit
@IBDesignable
class CustomCellTableViewCell: UITableViewCell {
    @IBOutlet weak var levelLabel: UILabel!
    let midx = UIScreen.mainScreen().bounds.width/2
    var midy: CGFloat = 0
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Initialization code
        midy = CGRectGetMidY(self.bounds)
        let diameter = min (self.frame.size.width, self.frame.size.height)
        let circlePathTwo = UIBezierPath(arcCenter: CGPoint(x: midx,y: midy + 23), radius: CGFloat(diameter/2), startAngle: CGFloat(0), endAngle:CGFloat(M_PI * 2), clockwise: true)
        let shapeLayerTwo = CAShapeLayer()
        shapeLayerTwo.path = circlePathTwo.CGPath
        shapeLayerTwo.fillColor = UIColor(red: 0/255, green: 178/255, blue: 238/255, alpha: 1).CGColor
        shapeLayerTwo.strokeColor = UIColor(red: 0/255, green: 178/255, blue: 238/255, alpha: 1).CGColor
        shapeLayerTwo.lineWidth = 3
        layer.insertSublayer(shapeLayerTwo, atIndex: 0)
        
        
    }
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath()
        path.lineWidth = 7
        path.moveToPoint(CGPointMake(midx, midy + 68))
        path.addLineToPoint(CGPointMake(midx, midy - 22))
        UIColor(red: 202/255, green: 225/255, blue: 255/255, alpha: 1).setStroke()
        path.stroke()
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
