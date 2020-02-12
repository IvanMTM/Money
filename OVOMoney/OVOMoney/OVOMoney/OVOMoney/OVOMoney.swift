//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
//

import Foundation

public struct OVOMoney: Money {
    public let amount: Double
    
    public var stringAmount: String {
        return "\(intAmount)"
    }
    public var intAmount: Int {
        return Int(amount)
    }
    
    public init(amount: MoneyIdenfiable) {
        switch amount {
        case let val as Double:
            self.amount = val
        case let val as Int:
            self.amount = Double(val)
        case let val as NSNumber:
            self.amount = val.doubleValue
        case let val as String:
            self.amount = val.toDouble()
        default:
            self.amount = 0
        }
    }
    
    public init(value: Any?) {
        guard let value = value as? MoneyIdenfiable else {
            self.init()
            return
        }
        self.init(amount: value)
    }
    
    private init() {
        amount = 0
    }
}

// MARK: Public
public extension OVOMoney {
    func string(withDecimalDigits: Int) -> String {
        let formatter = RupiahFormatter(numberStyle: .decimal, decimalDigits: withDecimalDigits)
        let stringValue = formatter.string(fromNumber: amount)
        return stringValue
    }
    
    func string(format: MoneyFormat) -> String {
        format.string(from: amount)
    }
}

// MARK: Private
private extension String {
    func toDouble() -> Double {
        if let value = Int(self) {
            return Double(value)
        } else {
            let formatter = RupiahFormatter(numberStyle: .currency, decimalDigits: 2)
            if let number = formatter.number(from: self) {
                return number.doubleValue
            } else {
                var value = ""
                for char in self {
                    if char == "," {
                        break
                    } else if char.isNumber {
                        value += String(char)
                    }
                }
                return Double(Int(value) ?? 0)
            }
        }
    }
}
