//
// Created by OVO on 07/02/20.
// Copyright © 2020 OVO. All rights reserved.
//

import OVOMoney

public struct MoneyModel: Decodable {
    let id: OVOMoney
    let money: String
    
    enum key: String, CodingKey {
        case id, money
    }
    
    public init(from decoder: Decoder) throws {
        let map = try decoder.container(keyedBy: key.self)
        self.id = try map.decode(OVOMoney.self, forKey: .id)
        self.money = try map.decode(String.self, forKey: .money)
    }
}
