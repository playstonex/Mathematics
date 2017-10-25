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
    
    func testMeanSquare() {
        let a:Double = 3
        let b:Double = 4
         XCTAssertEqual(Mathematical.meanSquare(x: a, y: b),5)
    }
    
    func testMeanSquare3() {
        let a:Double = 3
        let b:Double = 4
        //let c:Double = 5
        XCTAssertEqual(Mathematical.meanSquare(x: a, y: b),5)
    }
    func testSum() {
        let a:[Double] = [1.0,3.0,4.0,5.0,6.0,7.0,9.0]
        XCTAssertEqual(Mathematical.sum(num: a), 35)
    }
    
    func testWeight() {
        let a:[Double] = [2,3,4,1,10]
        XCTAssertEqual(Mathematical.weight(num: a), [0.1, 0.15, 0.2,0.05,0.5])
    }
    
    func testRevertWeight() {
        let a:[Double] = [2,3,4,1,10]
        XCTAssertEqual(Mathematical.revert_weight(num: a), [0.22900763358778628, 0.15267175572519084, 0.11450381679389314,0.45801526717557256,0.045801526717557259])
    }
    
    func testAverageWithWeight() {
        let a:Double = 3;
        let aw:Double = 4;
        let b:Double = 5;
        let bw:Double = 6;
        
        XCTAssertEqual(Mathematical.weightedAverage(x: a, wx: aw, y: b, wy: bw), 4.2)
    }
    
    func testAverageWithWeights() {
        let a:Double = 3;
        let aw:Double = 4;
        let b:Double = 5;
        let bw:Double = 6;
        
        XCTAssertEqual(Mathematical.average(nums: [a,b], weight: [aw, bw]), 4.2)
    }
}
