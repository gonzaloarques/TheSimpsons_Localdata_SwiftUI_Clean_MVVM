//
//  CharacterCardVM.swift
//  TheSimpsonsLocal
//
//  Created by Gonzalo Arques on 30/11/25.
//

import SwiftUI

@Observable
final class CharacterCardVM {
    let repository: CharacterCardDataRepository
    
    var cards: [CharacterCardModel]
    
    init(repository: CharacterCardDataRepository = CharacterCardRepository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        }
        catch {
            cards = []
        }
    }
}
