//
//  CollectionView.swift
//  newOne
//
//  Created by Orka iOS Developer on 28/04/22.
//

import UIKit

class CollectionView: UICollectionView ,UICollectionViewDataSource, UICollectionViewDelegate {
    
    let urlList = ["https://picsum.photos/id/10/2500/1667",
                   "https://picsum.photos/id/100/2500/1656",
                   "https://picsum.photos/id/1003/1181/1772",
                   "https://picsum.photos/id/1004/5616/3744",
                   "https://picsum.photos/id/1008/5616/3744",
                   "https://picsum.photos/id/101/2621/1747",
                   "https://picsum.photos/id/1010/5184/3456",
                   "https://picsum.photos/id/1015/6000/4000",
                   "https://picsum.photos/id/1016/3844/2563",
                   "https://picsum.photos/id/1019/5472/3648",
                   "https://picsum.photos/id/1018/3914/2935",
                   "https://picsum.photos/id/1025/4951/3301",
                   "https://picsum.photos/id/101/2621/1747",
                   "https://picsum.photos/id/1010/5184/3456",
                   "https://picsum.photos/id/1015/6000/4000",
                   "https://picsum.photos/id/1016/3844/2563",
                   "https://picsum.photos/id/1019/5472/3648",
                   "https://picsum.photos/id/1018/3914/2935",
                   "https://picsum.photos/id/1025/4951/3301",
                   "https://picsum.photos/id/10/2500/1667",
                   "https://picsum.photos/id/100/2500/1656",
                   "https://picsum.photos/id/1003/1181/1772",
                   "https://picsum.photos/id/1004/5616/3744",
                   "https://picsum.photos/id/1008/5616/3744",
                   "https://picsum.photos/id/101/2621/1747",
                   "https://picsum.photos/id/1010/5184/3456",
                   "https://picsum.photos/id/1015/6000/4000",
                   "https://picsum.photos/id/1016/3844/2563",
                   "https://picsum.photos/id/1019/5472/3648",
                   "https://picsum.photos/id/1018/3914/2935",
                   "https://picsum.photos/id/1025/4951/3301",
                   "https://picsum.photos/id/101/2621/1747",
                   "https://picsum.photos/id/1010/5184/3456",
                   "https://picsum.photos/id/1015/6000/4000",
                   "https://picsum.photos/id/1016/3844/2563",
                   "https://picsum.photos/id/1019/5472/3648",
                   "https://picsum.photos/id/1018/3914/2935",
                   "https://picsum.photos/id/1025/4951/3301"]
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self
        self.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        urlList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .purple
        cell.layer.cornerRadius = 25
        cell.loadImage(withURL: self.urlList[indexPath.item])
        cell.collectionViewCell.contentMode = .scaleAspectFill
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        return CGSize(width: 150, height: 150)
        
    }
    
    
    
}
