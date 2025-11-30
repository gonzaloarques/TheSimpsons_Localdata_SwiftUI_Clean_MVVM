//
//  ListOfCharactersView.swift
//  TheSimpsonsLocal
//
//  Created by Gonzalo Arques on 30/11/25.
//

import SwiftUI

struct ListOfCharactersView: View {
    
    @State var vm = CharacterCardVM()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.cards) { card in
                    CharacterCardView(card: card)
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden) // (only iOS 16+)
            .background(Color.gray.opacity(0.1))
            .navigationTitle("The Simpsons")
        }
    }
    
}

#Preview {
    ListOfCharactersView(vm: CharacterCardVM(repository: CharacterCardRepository()))
}
