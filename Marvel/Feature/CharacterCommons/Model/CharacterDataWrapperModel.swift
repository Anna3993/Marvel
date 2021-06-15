//
//  CharacterDataWrapperModel.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import Foundation

struct CharacterDataWrapperModel: Codable {
    let code: Int?
    let status: String?
    let data: CharacterDataContainerModel?
}
