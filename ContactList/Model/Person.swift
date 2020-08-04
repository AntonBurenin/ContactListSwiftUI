//
//  Person.swift
//  ContactList
//
//  Created by Anton on 04.08.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

struct Person: Hashable {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    func fullName() -> String {
        return name + " " + surname
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let data = DataManager.shared
        
        let countPersons = min(data.names.count,
                               data.surnames.count,
                               data.phones.count,
                               data.emails.count)
        
        for index in 0..<countPersons {
            let person = Person(name: data.names[index],
                                surname: data.surnames[index],
                                phone: data.phones[index],
                                email: data.emails[index] + "@mail.ru")
            persons.append(person)
        }
        return persons
    }
}

