//
//  Wage.swift
//  windowShopper
//
//  Created by Mukhammadjon Askarov on 7/1/19.
//  Copyright © 2019 Mukhammadjon Askarov. All rights reserved.
//

import Foundation
class Wage {
    
    class func getHours(forWage wage: Double, forPrice price: Double) -> Double{
        
        return ceil(price/wage)
    }
}
