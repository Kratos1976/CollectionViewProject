//
//  PhotoCollectionViewCell.swift
//  CollectionViewProject
//
//  Created by skynet on 5/1/22.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"

    private let imageView: UIImageView = {
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFill
        imageview.clipsToBounds = true
        return imageview
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)

        let images = [
            UIImage(named: "image 1"),
            UIImage(named: "image 2"),
            UIImage(named: "image 3"),
            UIImage(named: "image 4"),
            UIImage(named: "image 5"),
            UIImage(named: "image 6"),
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func layoutSubviews() {
        super .layoutSubviews()
        imageView.frame = contentView.bounds
    }

    override func prepareForReuse() {
        super.prepareForReuse()
//        imageView.image = nil
    }
}
