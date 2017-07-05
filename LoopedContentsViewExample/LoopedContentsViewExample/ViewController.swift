//
//  ViewController.swift
//  LoopedContentsViewExample
//
//  Created by naru on 2016/08/23.
//  Copyright © 2016年 naru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoopedContentsViewDelegate {

    // MARK: Constants
    
    fileprivate struct Constants {
        static let ContentSize: CGSize = CGSize(width: 120.0, height: 120.0)
    }
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(self.contentsView)
        self.contentsView.reloadData()
    }

    // MARK: Elements
    
    fileprivate lazy var dataSource: LoopedContentsDataSource = {
        return LoopedContentsDataSource()
    }()
    
    fileprivate lazy var contentsView: LoopedContentsView = {
        let origin: CGPoint = CGPoint(x: 0.0, y: (UIScreen.main.bounds.height - Constants.ContentSize.height)/2.0)
        let frame: CGRect = CGRect(origin: origin, size: CGSize(width: UIScreen.main.bounds.width, height: Constants.ContentSize.height))
        let view: LoopedContentsView = LoopedContentsView(frame: frame)
        view.registerClass(class: CustomCell.self, forCellReuseIdentifier: "cell")
        view.delegate = self
        view.dataSource = self.dataSource
        return view
    }()
    
    // MARK: Delegate

    func loopedContentsView( loopedContentsView: LoopedContentsView, lengthOfContentAtIndex index: Int) -> CGFloat {
        return Constants.ContentSize.width
    }
}

