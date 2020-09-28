//
//  RandomImage.swift
//  RandomPhoto
//
//  Created by Santiago Gomez del campo on 22/06/20.
//  Copyright © 2020 Santiago Gomez del campo. All rights reserved.
//

import Foundation


struct ImageID : Codable {
    let likes : Int
    let alt_description : String 
    let urls : ImageRaw
    
    enum CodingKeys : String, CodingKey {
        case likes = "likes"
        case alt_description = "alt_description"
        case urls = "urls"
    }
}

//struct ImageLikes : Decodable {
//    let likes : Int = 0
//
//
//struct ImageDescription : Decodable {
//    let alt_description : String = ""
//}
//
//struct ImageURL : Decodable {
//    let urls : [ ImageURL ]
//}
//

struct ImageRaw : Codable {
    let small : String
    
    enum CodingKeys : String, CodingKey {
        case small = "small"
    }
}









