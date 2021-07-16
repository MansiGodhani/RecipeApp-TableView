//
//  RecipeBookVC.swift
//  RecipeApp
//
//  Created by DCS on 01/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//


import UIKit

class RecipeBookVC: UIViewController {
    
    var image = UIImage()
    var lbl = ""
    var desc = ""
    var subtitlelbl = ""
    var subLable = ""
    
    private let myLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        return label
    }()
    
    private let subtitleLabel : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = label.font.withSize(20)
        return label
    }()
    
    private let myImageview : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let subTitle:UILabel = {
        let label = UILabel()
        label.text = "Ingredients :- "
        label.textAlignment = .left
        label.font = label.font.withSize(22)
        label.textColor = UIColor.red
        return label
    }()
    private let mytextview : UITextView = {
        let textview = UITextView()
        textview.textAlignment = .left
        textview.font = .systemFont(ofSize: 16)
        return textview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        view.addSubview(myLabel)
        myLabel.text = lbl
        view.addSubview(subtitleLabel)
        subtitleLabel.text = subtitlelbl
        view.addSubview(myImageview)
        myImageview.image = image
        view.addSubview(subTitle)
        view.addSubview(mytextview)
        mytextview.text = desc
        view.backgroundColor = .white
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 80, width: view.width-40, height: 40)
        subtitleLabel.frame = CGRect(x: 20, y: myLabel.bottom + 5, width: view.width-40, height: 20)
        myImageview.frame = CGRect(x: 20, y: subtitleLabel.bottom + 30, width: view.width-40, height: 250)
        subTitle.frame = CGRect(x: 20, y: myImageview.bottom + 20, width: view.width-40, height: 28)
        mytextview.frame = CGRect(x: 20, y: subTitle.bottom + 15, width: view.width-40, height: 150)
    }
    
}
