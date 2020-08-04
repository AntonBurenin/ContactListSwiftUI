//
//  ContactTable.swift
//  ContactList
//
//  Created by Anton on 04.08.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct ContactTable: View {
    let persons: [Person]
    var body: some View {
        List(persons, id: \.self) { person in
            NavigationLink(destination: DetailInfo(person: person)) {
                Text("\(person.fullName())")
            }
        }
        
    }
}

struct ContactTable_Previews: PreviewProvider {
    static var previews: some View {
        ContactTable(persons: Person.getContactList())
    }
}
