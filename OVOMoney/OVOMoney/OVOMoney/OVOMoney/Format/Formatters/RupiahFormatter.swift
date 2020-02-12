//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
//

import Foundation

final class RupiahFormatter: NumberFormatter {
    init(numberStyle: NumberFormatter.Style, decimalDigits: Int) {
        super.init()
        locale = Locale(identifier: "id_ID")
        groupingSeparator = "."
        decimalSeparator = ","
        self.numberStyle = numberStyle
        minimumFractionDigits = decimalDigits
    }

     required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RupiahFormatter: OVOMoneyFormatter {
    func string(fromNumber number: Double) -> String {
        return string(for: number) ?? ""
    }
}
