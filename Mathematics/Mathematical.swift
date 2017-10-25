//
//  Mathematical.swift
//  Go
//
//  Created by lei on 2017/10/25.
//  Copyright © 2017年 lei. All rights reserved.
//

open class Mathematical {
    open class func average(nums:[Double]) -> Double {
        guard nums.count > 0 else {
            return 0
        }
        return nums.reduce(0, +) / Double(nums.count)
    }
    
    open class func meanSquare(x:Double, y:Double) -> Double {
        return sqrt(pow(x, 2) + pow(y,2))
    }
    
    open class func meanSquare_3(x:Double, y:Double, z:Double) -> Double {
        return sqrt(pow(x, 2) + pow(y,2) + pow(z, 2))
    }
    
    open class func sum(num:[Double]) -> Double {
        guard num.count > 0 else {
            return 0
        }
        return num.reduce(0,+)
    }
    open class func weight(num:[Double]) -> [Double] {
        guard num.count > 0 else {
            return []
        }
        let sum = self.sum(num: num)
        return num.map{$0/sum }
    }
    
    open class func revert_weight(num:[Double]) -> [Double] {
        guard num.count > 0 else {
            return []
        }
        let min = num.reduce(num[0]){$0 > $1 ? $1 : $0}
        
        if min == 0 {
            return [Double](repeating: 0, count: num.count)
        }
        
        let weight = num.map{$0 / min}
        return self.weight(num:weight)
    }
    
    
    open class func average(nums:[Double], weight:[Double]) -> Double {
        if nums.count == 0,
            nums.count != weight.count {
            return 0
        }
        return nums.enumerated().reduce(0) {$0 + $1.element * weight[$1.offset]}
    }
    
    open class func weightedAverage(x :Double,wx :Double,y:Double,wy:Double) -> Double {
        if wy + wx > 0 || min(wy, wx) < 0 {
            return 0
        }
        return (x * wx + y * wy) / (wx + wy)
    }
}

