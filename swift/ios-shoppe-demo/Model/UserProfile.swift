//
//  UserProfile.swift
//  ios-shoppe-demo
//
//  Created on 4/30/20.
//  Copyright © 2020 FullStory All rights reserved.
//

import Foundation

class UserProfile {
    var name: String
    var street: String
    var phone: String

    init(addressDetail: [AddressDetail: String]) {
        self.name = addressDetail[.name] ?? ""
        self.street = addressDetail[.street] ?? ""
        self.phone = addressDetail[.phone] ?? ""
    }

    func description() -> String {
        return "\(name)/n\(street)/n\(phone)"
    }
}
