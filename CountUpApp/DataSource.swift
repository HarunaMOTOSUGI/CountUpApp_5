//
//  DataSource.swift
//  CountUpApp
//
//  Created by 本杉春奈 on 2023/07/03.
//

class DataSource {
    
    var count:UInt8 = 0
    //    let tmp:UInt8 = decToHex()
    
    func countUp(coeff: UInt16) {
        let num: UInt16 = UInt16(count) + coeff
        if num <= UInt8.max {
            count = UInt8(num)
        }
        else {
            count = 0
        }
    }
}

extension UInt8 {
    func decToHex() -> String {
        return String(format:"0X%02X",UInt8())
    }
}
    

class DataSource2: DataSource{
    func decToBin() -> String {
        return "0b"+String(count,radix:2)
    }
}
