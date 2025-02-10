//
//  Kahve.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import Foundation
import UIKit

struct Kahve: Decodable {
    var imageName: String
    let title: String
    let summary: String
    
    var image: UIImage? {
        return UIImage(named: imageName)
    }
    
    enum CodingKeys : String, CodingKey {
        case title
        case imageName = "image_name"
        case summary
    }
}
