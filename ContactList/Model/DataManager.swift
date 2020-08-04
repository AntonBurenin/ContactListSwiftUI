//
//  DataManager.swift
//  ContactList
//
//  Created by Anton on 04.08.2020.
//  Copyright © 2020 Anton. All rights reserved.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "John", "Mary", "Yura", "Anton", "Dima",
        "Gendalf", "Harry", "Elvis", "Emmy", "Ostap"
    ].shuffled()
    
    let surnames = [
        "Smith", "Weston", "Cosmos", "Sprawl", "Potter",
        "Baggins", "Vorobyaninov", "Bender", "Presley", "Wainhouse"
    ].shuffled()
    
    let phones = [
        "85955152", "+7915488553", "+318114762589", "14-86",
        "8-800-000-1-000", "700-800", "2-62-38", "911", "+7963631844"
    ].shuffled()
    
    let emails = [
        "exit", "master", "blm", "1815995ewrter", "kisa",
        "swiftbook", "lanta", "sauron", "sega1810", "visit"
    ].shuffled()
    
    private init() {}
}
