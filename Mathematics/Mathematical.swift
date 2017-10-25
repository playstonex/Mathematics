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
        
        let weight = num.map{ min / $0}
        return self.weight(num:weight)
    }
    
    
    open class func average(nums:[Double], weight:[Double]) -> Double {
        if nums.count == 0,
            nums.count != weight.count,
            let min = weight.min(),
            min <= 0 {
            return 0
        }
        let sum = self.sum(num: weight)
        let newWeight = weight.map{$0/sum}
        return nums.enumerated().reduce(0) {$0 + $1.element * newWeight[$1.offset]}
    }
    
    open class func weightedAverage(x :Double,wx :Double,y:Double,wy:Double) -> Double {
        if min(wx, wy) <= 0 {
            return 0
        }
        return (x * wx + y * wy) / (wx + wy)
    }
}

