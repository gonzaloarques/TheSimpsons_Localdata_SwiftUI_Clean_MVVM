//
//  CharacterCardModel.swift
//  TheSimpsonsLocal
//
//  Created by Gonzalo Arques on 30/11/25.
//

import Foundation

// MARK: - DTO
struct CharactersListModelDTO: Codable {
    let results: [CharacterCardModelDTO]
}

struct CharacterCardModelDTO: Codable {
    let id: Int
    let age: Int?
    let birthdate: String?
    let gender: String?
    let name: String?
    let occupation: String?
    let portraitPath: String?
    let phrases: [String]?
    let status: String?
}

// MARK: - Conversion
extension CharacterCardModelDTO {
    var toCard: CharacterCardModel {
        
        var phrasesFormatted: [String] = []
        for phrase in phrases ?? [] {
            phrasesFormatted.append("\"\(phrase)\"")
        }
        
        return CharacterCardModel(
            id: id,
            age: "Age: \(age ?? -1)",
            gender: gender ?? "",
            name: name ?? "",
            occupation: occupation ?? "",
            portraitPath: portraitPath ?? "",
            phrases: phrasesFormatted,
            status: status ?? "")
    }
}

// MARK: - Model
struct CharacterCardModel: Identifiable, Hashable {
    let id: Int
    let age: String
    let gender: String
    let name: String
    let occupation: String
    let portraitPath: String
    let phrases: [String]
    let status: String
}

// MARK: - Example Test
extension CharacterCardModel {
    static let test = CharacterCardModel(
        id: 1,
        age: "Age: 39",
        gender: "Male",
        name: "Homer Simpson",
        occupation: "Safety Inspector",
        portraitPath: "1",
        phrases: ["\"Doh!\""],
        status: "Alive")
}
