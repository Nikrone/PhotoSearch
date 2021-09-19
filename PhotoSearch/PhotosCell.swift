//
//  PhotosCell.swift
//  PhotoSearch
//
//  Created by Evgeniy Nosko on 19.09.21.
//

import UIKit

class PhotosCell: UICollectionViewCell {
    
    static let reused = "PhotosCell"
    
    private let photoImageView: UIImageView = {
        let imageView = UIImageView()
//        чтобы фиксировать ячейки с помощю кода
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
