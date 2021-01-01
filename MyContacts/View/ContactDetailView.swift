//
//  ContactDetailView.swift
//  MyContacts
//
//  Created by RB on 2020-12-31.
//

import SwiftUI

struct ContactDetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(contact.name)
                .font(.title)
                .fontWeight(.medium)
            Form {
                HStack {
                    Text("Phone")
                    Spacer()
                    Text(contact.phone)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                HStack {
                    Text("Email")
                    Spacer()
                    Text(contact.email)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                HStack {
                    Text("Address")
                    Spacer()
                    Text(contact.address)
                        .foregroundColor(.gray)
                        .font(.callout)
                        .frame(width: 180)
                }
                Section {
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Send Message")
                        }, label: {
                            Text("Send Message")
                                .padding(.all)
                        })
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Call")
                        }, label: {
                            Text("Call")
                                .padding(.all)
                        })
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContactDetailView(contact: ContactManager.contacts[0])
    }
}
