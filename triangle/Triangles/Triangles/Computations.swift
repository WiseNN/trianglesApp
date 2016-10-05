//
//  model.swift
//  Triangles
//
//  Created by Norris Wise on 10/4/16.
//  Copyright © 2016 Norris Swift. All rights reserved.
//

import Foundation
class Computations:NSObject
{
    private func isTriangle(A:Int, B:Int, C:Int) -> Bool
    {
        let result1 = ((A*C)+(C*B))>(A*B)
        let result2 = ((C*B)+(A*B))>(A*C)
        let result3 = ((A*B)+(A*C))>(C*B)
        let isTrue = result1&&result2&&result3 ? true : false
        
        return isTrue
    }
    
    func triangleWithSidesTypeIs(side1:Int, side2:Int, side3:Int) -> String
    {
        guard isTriangle(side1, B:side2, C:side3) else{
            return "This is Not a Triangle"
        }
        
        var triType = ""
        let tempTuple = (side1,side2,side3)
        
        switch(tempTuple)
        {
        case let (s1,s2,s3) where (s1==s2) && (s2==s3): triType="Equilateral"
        case let (s1,s2,s3) where (s1==s2) || (s1==s3): triType="Isosceles"
        case let (s1,s2,s3) where !(s1==s2) && !(s1==s3): triType="Scalene"
        default: triType="Error"
            
        }
        
        return triType;
    }
}