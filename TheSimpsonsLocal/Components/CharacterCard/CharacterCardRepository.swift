//
//  CharacterCardRepository.swift
//  TheSimpsonsLocal
//
//  Created by Gonzalo Arques on 30/11/25.
//

import Foundation

protocol CharacterCardDataRepository {
    var url: URL { get }
}

extension CharacterCardDataRepository {
    func getData() throws -> [CharacterCardModel] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let dataDecoded = try decoder.decode(CharactersListModelDTO.self, from: data)
        return dataDecoded.results.map(\.toCard)
    }
}

struct CharacterCardRepository: CharacterCardDataRepository {
    var url: URL {
        Bundle.main.url(forResource: "CharacterListTest", withExtension: "json")!
    }
}
