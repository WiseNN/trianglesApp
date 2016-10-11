//
//  TrianglesTests.swift
//  TrianglesTests
//
//  Created by Norris Wise on 10/4/16.
//  Copyright © 2016 Norris Swift. All rights reserved.
//

import XCTest
@testable import Triangles //import the class to be tested on

//testing class
class TrianglesTests: XCTestCase
{
    //class reference variables
    var testTriangle = TriangleComputations()
    
    //class primitves
    struct sides {
        static let typeTest = (8,9,8)
        static let isTriangleTest = (8,9,8)
        static let isSideATest = (8,9,8)
        static let isSideBTest = (8,9,8)
        static let isSideCTest = (8,9,8)
    }
    
    override func setUp()
    {
        super.setUp()

        //create new reference on each method execution
        testTriangle = TriangleComputations()
    }
    
    
    
    //test sides of triangle render appropriate results
    func testTriangleWithSidesTypeIs()
    {
        let triType = testTriangle.triangleWithSidesTypeIs(sides.typeTest.0, side2: sides.typeTest.1, side3: sides.typeTest.2)
        XCTAssertEqual(triType, "Isosceles")
    }
    
    // test if all sides validate to be a triangle
    func isTriangle(A:Int, B:Int, C:Int) -> Bool
    {
        return testTriangle.isTriangle(sides.isTriangleTest.0, B: sides.isTriangleTest.1, C: sides.isTriangleTest.2)
    }
    
    //test to calculate side 1 return isTrue
    func testIsValidTriangleSideA()
    {
        let isSideA = testTriangle.isValidTriangleSideA(sides.isSideATest.0, sideB1: sides.isSideATest.1, sideC1: sides.isSideATest.2)
        XCTAssert(isSideA, "A:Is Not Valid Side")
    }
    //test to calculate side 2 return isTrue
    func testIsValidTriangleSideB()
    {
        let isSideB = testTriangle.isValidTriangleSideB(sides.isSideBTest.0, sideB2: sides.isSideBTest.1, sideC2: sides.isSideBTest.2)
        XCTAssert(isSideB, "B:Is Not Valid Side")
    }
    //test to calculate side 3 return isTrue
    func testIsValidTriangleSideC()
    {
       let isSideC = testTriangle.isValidTriangleSideC(sides.isSideCTest.0, sideB3: sides.isSideCTest.1, sideC3: sides.isSideCTest.2)
        XCTAssert(isSideC, "C:Is Not Valid Side")
    }
    
    
    
    
    override func tearDown()
    {
        
        super.tearDown()
    }
}
