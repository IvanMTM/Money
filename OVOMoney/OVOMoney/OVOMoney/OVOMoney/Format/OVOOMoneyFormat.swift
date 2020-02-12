//
// Created by OVO on 12/02/20.
// Copyright © 2020 OVO. All rights reserved.
// 

struct OVOOMoneyFormat: OptionSet {
    let rawValue: Int
    
    static let prefixRp     = OVOOMoneyFormat(rawValue: 1 << 0)
    static let suffixPoint  = OVOOMoneyFormat(rawValue: 1 << 1)
    static let suffixUnit   = OVOOMoneyFormat(rawValue: 1 << 2)
    static let twoDecimals  = OVOOMoneyFormat(rawValue: 1 << 3)
    static let fourDecimals = OVOOMoneyFormat(rawValue: 1 << 4)
    
    static let rupiah: OVOOMoneyFormat = [.prefixRp]
    static let point: OVOOMoneyFormat = [.suffixPoint]
    static let unit: OVOOMoneyFormat = [suffixUnit, .twoDecimals]
}
