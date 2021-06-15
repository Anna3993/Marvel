//
//  ImageModel.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import Foundation

struct ImageModel: Codable {
    let fileExtension: String?
    let path: String?
    
    enum CodingKeys: String, CodingKey {
        case fileExtension = "extension"
        case path = "path"
    }
}
