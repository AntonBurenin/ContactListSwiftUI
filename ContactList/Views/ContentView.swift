//
//  ContentView.swift
//  ContactList
//
//  Created by Anton on 04.08.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContactList()
    var body: some View {
        NavigationView {
            TabView {
                ContactTable(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                }
                ContactWithHeader(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Contacts")
                }
            }
            .navigationBarTitle("Persons List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
