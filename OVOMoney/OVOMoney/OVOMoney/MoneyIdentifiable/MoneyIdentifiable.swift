//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
//

import Foundation

public protocol MoneyIdenfiable {
    var toMoney: Money { get }
}

public extension MoneyIdenfiable {
    var toMoney: Money { return OVOMoney(value: self) }
}

extension Double: MoneyIdenfiable {}
extension Int: MoneyIdenfiable {}
extension String: MoneyIdenfiable {}
extension NSNumber: MoneyIdenfiable {}
