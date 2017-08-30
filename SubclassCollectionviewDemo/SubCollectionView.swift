//
//  SubCollectionView.swift
//  SubclassCollectionviewDemo
//
//  Created by sseen on 2017/8/30.
//  Copyright © 2017年 sseen. All rights reserved.
//

import UIKit

class SubCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect, collectionViewLayout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: collectionViewLayout)
        didLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        didLoad()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    func didLoad() {
        //Place your initialization code here
        
        //I actually create & place constraints in here, instead of in
        //updateConstraints
        self.bounces = true
        self.alwaysBounceVertical = true
        self.backgroundColor = UIColor.white
        self.delegate = self
        self.dataSource = self
        self.register(UINib.init(nibName: "RDHomeIBCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        //Custom manually positioning layout goes here (auto-layout pass has already run first pass)
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        //Disable this if you are adding constraints manually
        //or you're going to have a 'bad time'
        //self.translatesAutoresizingMaskIntoConstraints = false
        
        //Add custom constraint code here
    }

}

extension SubCollectionView {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func numberOfItems(inSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! RDHomeIBCollectionViewCell
        cell.backgroundColor = UIColor.black
        
        return cell
    }
}
