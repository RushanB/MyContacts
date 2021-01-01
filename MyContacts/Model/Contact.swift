//
//  Contact.swift
//  MyContacts
//
//  Created by RB on 2020-12-31.
//

import SwiftUI

struct Contact: Identifiable {
    
    let id = UUID()
    
    let imageName: String
    let name: String
    let phone: String
    let email: String
    let address: String
}
