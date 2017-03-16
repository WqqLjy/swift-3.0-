//
//  ViewController.swift
//  Swift PBL
//
//  Created by mac on 2017/3/16.
//  Copyright © 2017年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate ,LCWaterfallLayoutDelegate {
    var colView: UICollectionView?;// 创建一个列表
         override func viewDidLoad() {
                super.viewDidLoad()
                self.title="电台"
                //网格流
                let layout = LCWaterfallLayout();
                layout.waterdelegate = self
                //设置网格的的范围
                colView = UICollectionView(frame: CGRect.init(x: 0, y: 54, width: UIScreen.main.bounds.width, height: self.view.bounds.height), collectionViewLayout: layout);
                colView?.register(myCollectionViewCell.self, forCellWithReuseIdentifier: "homeCell")
                colView?.delegate = self;
                colView?.dataSource = self;
                colView?.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1);
                self.view.addSubview(colView!);
            }
            func lcwaterfallLayout(waterfallLayout: LCWaterfallLayout, itemwidth: CGFloat, atindexpath: NSIndexPath) -> CGFloat {
                let heiht = arc4random_uniform(150)
                return CGFloat(heiht)
            }
            public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
            {
                return 100;
            }
            public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
                var cell = myCollectionViewCell()
                cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! myCollectionViewCell;
                cell.backgroundColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                cell.imgg.image=UIImage(imageLiteralResourceName: "938c53821b559d0a2f3dad1de3a4e123.jpg")
                return cell;
            }
            func test() {
                //隐藏系统的导航栏 不然点击事件受到影响
                self.navigationController?.isNavigationBarHidden=true
                // 创建一个导航栏
                let navBar = UINavigationBar(frame: CGRect(x:0, y:0, width:self.view.frame.size.width, height:54))
                // 导航栏背景颜色
                navBar.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                
                // 自定义导航栏的title，用UILabel实现
                let titleLabel = UILabel(frame: CGRect(x:0,y:0,width:50,height:60))
                titleLabel.text = "电台"
                titleLabel.textColor = UIColor.black
                // 创建导航栏组件
                let navItem = UINavigationItem()
                // 设置自定义的title
                navItem.titleView = titleLabel
                
                // 把导航栏组件加入导航栏
                navBar.pushItem(navItem, animated: false)
                
                // 导航栏添加到view上
                self.view.addSubview(navBar)
    }

}

