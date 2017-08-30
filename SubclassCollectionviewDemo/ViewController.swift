//
//  ViewController.swift
//  SubclassCollectionviewDemo
//
//  Created by sseen on 2017/8/30.
//  Copyright © 2017年 sseen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var v:SubCollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let flow = UICollectionViewFlowLayout()
        flow.itemSize = CGSize(width: 50, height: 50)
        flow.minimumLineSpacing = 0
        flow.minimumInteritemSpacing = 0
        v = SubCollectionView(frame: .zero, collectionViewLayout: flow)
        v.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        self.view.addSubview(v)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        v.reloadData()
    }

}

