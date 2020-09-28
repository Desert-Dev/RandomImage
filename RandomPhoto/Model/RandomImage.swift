//
//  RandomImage.swift
//  RandomPhoto
//
//  Created by Santiago Gomez del campo on 22/06/20.
//  Copyright © 2020 Santiago Gomez del campo. All rights reserved.
//

import Foundation


struct ImageData : Codable {
    let id : String = ""
    let alt_description : String = ""
    let likes : Int = 0
    let urls : [ ImageURL ]
}

struct ImageURL : Codable {
    let raw : String = ""
}







