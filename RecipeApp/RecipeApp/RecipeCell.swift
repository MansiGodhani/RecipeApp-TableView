//
//  RecipeCell.swift
//  RecipeApp
//
//  Created by DCS on 01/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    lazy var backView: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width - 20, height: 110))
        view.backgroundColor = #colorLiteral(red: 0.9057418531, green: 0.9057418531, blue: 0.9057418531, alpha: 1)
        return view
    }()
    
    lazy var userImage: UIImageView = {
        let userImage = UIImageView(frame: CGRect(x: 10, y: 5, width: 108, height: 100))
        userImage.contentMode = .scaleAspectFill
        return userImage
    }()
    
    lazy var namelbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 140, y: 8, width: backView.frame.width - 116, height: 60))
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .left
        lbl.numberOfLines = 4
        return lbl
    }()
    
    lazy var descriptiontitlelbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 140, y: 50, width: backView.frame.width - 116, height: 30))
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        lbl.textAlignment = .left
        return lbl
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 10
        backView.clipsToBounds = true
        userImage.layer.cornerRadius = 54
        userImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(userImage)
        backView.addSubview(namelbl)
        backView.addSubview(descriptiontitlelbl)
    }
}
