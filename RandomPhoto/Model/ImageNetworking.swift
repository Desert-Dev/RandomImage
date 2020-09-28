//
//  ImageNetworking.swift
//  RandomPhoto
//
//  Created by Santiago Gomez del campo on 25/06/20.
//  Copyright © 2020 Santiago Gomez del campo. All rights reserved.
//

import Foundation
import UIKit

var newImageURL = ""
var newImage = UIImage()
var newLikes = 0
var newDescription = ""


struct ImageManager {
    
    
    let URLImage = "https://api.unsplash.com/photos/random/?client_id=h6CBSXCjQtP47OZQxLETzKACwVffd0QgcZBfrZ8ubPw"
    
    func performRequest(urlString : String) {
        // 1. Create a URL
        if let url  = URL(string: urlString) {
            // 2. Create a URLSession
            let session = URLSession(configuration: .default)
            // 3. Give the session a task
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(imageData: safeData)
                }
            }
            // 4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(imageData : Data) {
        
        newImageURL = ""
        newImage = UIImage()
        newLikes = 0
        newDescription = ""
        
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(ImageID.self, from: imageData)
            newLikes = decodedData.likes
            newDescription = decodedData.alt_description
            newImageURL = decodedData.urls.small
            let newImageURLConverted = URL(string: newImageURL)
            let convertedURLData = try Data(contentsOf: newImageURLConverted!)
            newImage = UIImage(data: convertedURLData)!
        } catch {
            print(error)
        }
    }
    
    func loadImage() {
    // En la funcion loadImage(), ponerle optional binding al texto y a los likes, porque puede que no tenga ni texto ni likes
        performRequest(urlString: URLImage)
        
    }
    
}
