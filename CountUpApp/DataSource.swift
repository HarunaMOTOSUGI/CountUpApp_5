//
//  DataSource.swift
//  CountUpApp
//
//  Created by 本杉春奈 on 2023/07/03.
//

class DataSource {
    
    var count:UInt8 = 0
    
    func countUp(coeff: UInt16) {
        let num: UInt16 = UInt16(count) + coeff
        if num <= UInt8.max {
            count = UInt8(num)
        }
        else {
            count = 0
        }
        print(count)
    }
    
    func decToHex() -> String {
        return String(format:"0x%02X",count)
    }
}

