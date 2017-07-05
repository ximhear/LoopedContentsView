//
//  LoopedContentsDataSource.swift
//  LoopedContentsViewExample
//
//  Created by naru on 2016/08/23.
//  Copyright © 2016年 naru. All rights reserved.
//

import UIKit

open class LoopedContentsDataSource: LoopedContentsViewDataSource {

    // MARK: Constants
    
    public struct Constants {
        static let Contents: [String] = (0...20).map { (element: Int) -> String in return "\(element)" }
    }
    
    open func loopedContentsViewNumberOfContents(loopedContentsView: LoopedContentsView) -> Int {
        return Constants.Contents.count
    }
    
    open func loopedContentsView(loopedContentsView: LoopedContentsView, cellAtIndex index: Int) -> LoopedContentsViewCell {
        let cell = loopedContentsView.dequeueReusableCellWithIdentifier(identifier: "cell") as! CustomCell
        self.configulerCell(cell, atIndex: index)
        return cell
    }
    
    fileprivate func configulerCell(_ cell: CustomCell, atIndex index: Int) {
        
        let color: UIColor = {
            let red: CGFloat = CGFloat(Constants.Contents.count - index - 1)/CGFloat(Constants.Contents.count - 1)
            let blue: CGFloat = CGFloat(index)/CGFloat(Constants.Contents.count - 1)
            return UIColor(red: red, green: 0.0, blue: blue, alpha: 1.0)
        }()
        cell.label.backgroundColor = color
        
        cell.label.text = Constants.Contents[index]
    }
}
