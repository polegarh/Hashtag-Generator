//
//  instaViewController.swift
//  final project
//
//  Created by oleg on 3/16/19.
//  Copyright © 2019 DePaul University. All rights reserved.
//

import UIKit

class instaViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var data: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(true)
        self.setData()
        self.setImage()
    }
    
    func setData() {
        let new_data = TopHashtagsViewController.data_loaded
        var result = ""
        for item in new_data {
            result = result + item + ", "
        }
        data.text = result
        data.lineBreakMode = .byWordWrapping
        data.numberOfLines = 0
    }

    func setImage() {
        imageView.image = ViewController.image_loaded
        imageView.layer.masksToBounds = true
    }
}
