//
//  model.swift
//  Triangles
//
//  Created by Norris Wise on 10/4/16.
//  Copyright © 2016 Norris Swift. All rights reserved.
//

import Foundation
class TriangleComputations:NSObject
{
    //take all triangle sides from user, return type of triangle or other  
    func triangleWithSidesTypeIs(side1:Int, side2:Int, side3:Int) -> String
    {
        guard isTriangle(side1, B:side2, C:side3) else{
            return "This is Not a Triangle"
        }
        
        var triangleType = ""
        let tempTuple = (side1,side2,side3)
        
        switch(tempTuple)
        {
            case let (s1,s2,s3) where (s1==s2) && (s2==s3): triangleType="Equilateral"
            case let (s1,s2,s3) where (s1==s2) || (s1==s3): triangleType="Isosceles"
            case let (s1,s2,s3) where !(s1==s2) && !(s1==s3): triangleType="Scalene"
            default: triangleType="Error"
        }
        
        return triangleType;
    }

    // take all side, determin if this is a triangle
    /*private*/ func isTriangle(A:Int, B:Int, C:Int) -> Bool
    {
        return isValidTriangleSideA(A, sideB1: B, sideC1: C) && isValidTriangleSideB(A, sideB2: B, sideC2: C) && isValidTriangleSideC(A, sideB3: B, sideC3: C)
    }
    
    
    //calculate side 3 return isTrue
    /*private*/ func isValidTriangleSideA(sideA1:Int, sideB1:Int, sideC1:Int) -> Bool
    {
        return (sideB1+sideC1)>sideA1
    }
    
    //calculate side 2 return isTrue
    /*private*/ func isValidTriangleSideB(sideA2:Int, sideB2:Int, sideC2:Int) -> Bool
    {
        return (sideA2+sideC2)>sideB2
    }
    
    //calculate side 1 return isTrue
    /*private*/ func isValidTriangleSideC(sideA3:Int, sideB3:Int, sideC3:Int) -> Bool
    {
        return (sideA3+sideB3)>sideC3
    }
    
}