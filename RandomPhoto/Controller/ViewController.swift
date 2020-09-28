//
//  ViewController.swift
//  RandomPhoto
//
//  Created by Santiago Gomez del campo on 22/06/20.
//  Copyright © 2020 Santiago Gomez del campo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let URLImage = "https://api.unsplash.com/photos/random/?client_id=h6CBSXCjQtP47OZQxLETzKACwVffd0QgcZBfrZ8ubPw&orientation=squarish"
    
    let imageManager = ImageManager()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageTitle: UILabel!
    @IBOutlet weak var imageLikes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUI()
        
    }

   
    
    @IBAction func imageButtonPressed(_ sender: UIButton) {
        loadUI()
    }
    
    func loadUI() {
        imageManager.performRequest(urlString: URLImage)
        imageLikes.text = "Likes: \(String(newLikes))"
        imageTitle.text = newDescription
        imageView.image = newImage
    }
    
}
