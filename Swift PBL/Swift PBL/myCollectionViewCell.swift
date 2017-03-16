//
//  myCollectionViewCell.swift
//  img
//
//  Created by mac on 2017/3/15.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    var imgg = UIImageView()
    override init(frame :CGRect){
        super.init(frame :frame)
        imgg=UIImageView(frame: CGRect(x: 0, y: 0, width: 170, height: 150))
        self.addSubview(imgg)
        
    }
    required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    
}
