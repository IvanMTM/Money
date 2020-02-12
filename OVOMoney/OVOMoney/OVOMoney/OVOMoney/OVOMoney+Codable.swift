//
// Created by OVO on 12/02/20.
// Copyright © 2020 OVO. All rights reserved.
// 

// MARK: Codable
extension OVOMoney: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let amount: MoneyIdenfiable = (try? container.decode(Int.self)) ??
                                      (try? container.decode(String.self)) ??
                                      (try? container.decode(Double.self)) ?? 0
        self.init(amount: amount)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(stringAmount)
    }
}
