//
//  DetailInfo.swift
//  ContactList
//
//  Created by Anton on 04.08.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct DetailInfo: View {
    let person: Person
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
                .foregroundColor(Color.gray)
            TextLeft(text: "Phone: \(person.phone)")
            TextLeft(text: "Email: \(person.email)")
            Spacer()
        }
        .navigationBarTitle("\(person.fullName())", displayMode: .inline)
    }
}

struct TextLeft: View {
    let text: String
    var body: some View {
        HStack {
            Text(text)
                .padding(EdgeInsets(top: 10,
                                    leading: 16,
                                    bottom: 0,
                                    trailing: 0))
            Spacer()
        }
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfo(person: Person.getContactList().first!)
    }
}
