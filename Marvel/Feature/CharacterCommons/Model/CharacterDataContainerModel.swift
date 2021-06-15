//
//  CharacterDataContainerModel.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import Foundation

struct CharacterDataContainerModel: Codable {
    let offset: Int?
    let limit: Int?
    let total: Int?
    let count: Int?
    let results: [CharacterModel]?
}
