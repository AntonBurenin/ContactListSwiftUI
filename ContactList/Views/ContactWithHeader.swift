//
//  ContactWithHeader.swift
//  ContactList
//
//  Created by Anton on 04.08.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct ContactWithHeader: View {
    let persons: [Person]
    var body: some View {
        List {
            ForEach(persons, id:\.self) { person in
                Section(header: Text("\(person.fullName())")) {
                    CellInfo(text: person.phone, imageName: "phone")
                    CellInfo(text: person.email, imageName: "envelope")
                }
            }
        }
    }
}

struct ContactWithHeader_Previews: PreviewProvider {
    static var previews: some View {
        ContactWithHeader(persons: Person.getContactList())
    }
}

struct CellInfo: View {
    let text: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}
