//
//  CharacterDetailDataSourceTests.swift
//  MarvelTests
//
//  Created by Anna on 15/06/2021.
//

import XCTest
@testable import Marvel

class CharacterDetailDataSourceTests: XCTestCase {
    
    func testResultSuccessDataSource(characterId: Int, success succeed: (@escaping (Bool, CharacterModel?) -> Void)) {
        let dataSource = CharacterDetailDataSource()
        dataSource.getResponse(characterId: characterId) { (result) in
            succeed(true, result)
        } failure: {
            succeed(false, nil)
        }
    }
    
    func testGetResponse() {
        let exp = expectation(description: "Alamofire")
        testResultSuccessDataSource(characterId: 1009351, success: { (result, _) in
            XCTAssertTrue(result, "testResultSuccessDataSource returned false")
            exp.fulfill()
        })
        waitForExpectations(timeout: 5.0, handler: nil)
    }
    
}
