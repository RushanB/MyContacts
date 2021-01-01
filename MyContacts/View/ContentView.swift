//
//  ContentView.swift
//  MyContacts
//
//  Created by RB on 2020-12-31.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = ContactManager.contacts
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetailView(contact: contact)) {
                    ContactRowView(contact: contact)
                }
            }
            .navigationTitle("My Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
