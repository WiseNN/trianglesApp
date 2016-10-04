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
    var q = TriangleViewController()
    let s1=6,s2=10,s3=9;
    
    override func setUp()
    {
        super.setUp()
        
        
        //create new reference on each method execution
        q = TriangleViewController()
        
    }
    
    //Is this a triangle
    func testIsTriangle()
    {
        let bool = q.isTriangle(s1, B: s2, C: s3)
        
        XCTAssertTrue(bool, "NOT A Triangle")
    }
    //If it is what kind of triangle
    func testTriangleWithSidesTypeIs()
    {
        let result = q.triangleWithSidesTypeIs(s1, side2:s2, side3:s3)
        XCTAssertEqual(result, "Scalene")
    }
    
    
    
    override func tearDown()
    {
        
        super.tearDown()
    }
}
