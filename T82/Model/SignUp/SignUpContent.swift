//
//  User.swift
//  T82
//
//  Created by 안홍범 on 7/10/24.
//

import Foundation

struct SignUpContent : Hashable{
    var email: String
    var password: String
    var passwordCheck: String
    var name: String
    var birthDate: Date
    var phoneNumber: String
    var address: String
    var addressDetail: String
}
