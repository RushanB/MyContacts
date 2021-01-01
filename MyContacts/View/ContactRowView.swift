//
//  ContactRow.swift
//  MyContacts
//
//  Created by RB on 2020-12-31.
//

import SwiftUI

struct ContactRowView: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactRowView(contact: ContactManager.contacts[0])
    }
}
