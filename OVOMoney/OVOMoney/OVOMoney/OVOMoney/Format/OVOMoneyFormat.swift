//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
//

import Foundation

public enum OVOMoneyFormat: MoneyFormat {
    case rupiah                      // Rp10.000
    case point                       // 10.000 Points
    case unit(decimalDigits: Int)    // 10.000,00 Unit
}

// MARK: Public
public extension OVOMoneyFormat {
    func string(from value: Double) -> String {
        let formatter = self.formatter
        switch self {
        case .rupiah:
            return formatter.string(fromNumber: value)
        case .point :
            return formatter.string(fromNumber: value) + (value > 1 ? " Points" : " Point")
        case .unit:
            return formatter.string(fromNumber: value) + " Unit"
        }
    }
}

// MARK: Private
private extension OVOMoneyFormat {
    var formatter: OVOMoneyFormatter {
        switch self {
        case .rupiah:
            return RupiahFormatter(numberStyle: .currency, decimalDigits: 0)
        case .point :
            return RupiahFormatter(numberStyle: .decimal, decimalDigits: 0)
        case .unit(let decimalDigits):
            return RupiahFormatter(numberStyle: .decimal, decimalDigits: decimalDigits)
        }
    }
}
