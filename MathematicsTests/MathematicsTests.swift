//
//  MathematicsTests.swift
//  MathematicsTests
//
//  Created by lei on 2017/10/25.
//  Copyright © 2017年 lei. All rights reserved.
//

import XCTest
@testable import Mathematics

class MathematicsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAvarage() {
        let a:[Double] = [1.0,3.0,4.0,5.0,6.0,7.0,9.0]
        XCTAssertEqual(Mathematical.average(nums: a), 5)
    }
    
}
