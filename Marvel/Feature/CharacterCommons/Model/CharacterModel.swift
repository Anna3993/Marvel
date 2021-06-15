//
//  CharacterModel.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import Foundation

struct CharacterModel: Codable {
    let id: Int?
    let name: String?
    let description: String?
    let urls: [URLModel]?
    let thumbnail: ImageModel?
}
