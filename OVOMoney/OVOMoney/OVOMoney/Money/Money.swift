//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
//

public protocol Money {
    var amount: Double { get }
    var stringAmount: String { get }
    var intAmount: Int { get }
    func string(withDecimalDigits: Int) -> String
    func string(format: MoneyFormat) -> String
}
