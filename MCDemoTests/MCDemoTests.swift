//
//  MCDemoTests.swift
//  MCDemoTests
//
//  Created by Dan Lange on 10/11/17.
//  Copyright © 2017 Dan Lange. All rights reserved.
//

import XCTest
@testable import MCDemo

class MCDemoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let b = true
        XCTAssert(b == true)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            
            for index in 1...20 {
                print(index)
            }
        }
    }
}
