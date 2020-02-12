//
// Created by OVO on 07/02/20.
// Copyright © 2020 OVO. All rights reserved.
// 

import UIKit
import OVOMoney

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        loadJson()
    }
    
    func loadJson() {
        if let path = Bundle.main.path(forResource: "dummy", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let codable = try JSONDecoder().decode(MoneyModel.self, from: data)
                print(codable)
              } catch {
                   // handle error
              }
        }
    }
}
