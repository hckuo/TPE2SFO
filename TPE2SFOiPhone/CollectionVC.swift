//
//  CollectionVC.swift
//  TPE2SFO
//
//  Created by zip520123 on 2017/7/29.
//  Copyright © 2017年 zip520123. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController , UICollectionViewDelegate,
UICollectionViewDataSource{

    @IBOutlet weak var collcetionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()


        let layout = UICollectionViewFlowLayout()
        

        layout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
        
        layout.minimumLineSpacing = 5
        
        collcetionView.delegate = self
        collcetionView.dataSource = self
        
        
    }
    

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath)
        -> UICollectionViewCell {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath) as! CollectionViewCell
            
            return cell
    }
    // 有幾個 section
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    // 點選 cell 後執行的動作
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("你選擇了第 \(indexPath.section + 1) 組的")
        print("第 \(indexPath.item + 1) 張圖片")
    }


}
