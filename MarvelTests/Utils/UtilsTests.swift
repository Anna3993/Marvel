//
//  UtilsTests.swift
//  MarvelTests
//
//  Created by Anna on 14/06/2021.
//

import XCTest
@testable import Marvel

class UtilsTests: XCTestCase {
    
    func testIsConnectedToNetwork() {
        XCTAssertTrue(Utils.isConnectedToNetwork(), "isConnectedToNetwork returned false")
    }
    
    func testSecureURL() {
        let noSecureURL = "http://www.google.es"
        let secureURL = "https://www.google.es"
        XCTAssertEqual(noSecureURL.secureURL(), secureURL)
        XCTAssertEqual(secureURL.secureURL(), secureURL)
    }
}
