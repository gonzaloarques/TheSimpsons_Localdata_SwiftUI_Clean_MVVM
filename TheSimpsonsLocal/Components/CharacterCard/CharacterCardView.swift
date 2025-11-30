//
//  CharacterCardView.swift
//  TheSimpsonsLocal
//
//  Created by Gonzalo Arques on 30/11/25.
//

import SwiftUI

struct CharacterCardView: View {
    
    let card: CharacterCardModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(card.portraitPath)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 5)
            Text(card.name)
                .font(.headline)
            Text(card.occupation)
                .foregroundStyle(.secondary)
                .padding(.bottom, 10)
            
            HStack(alignment: .center, spacing: 15) {
                Text(card.age)
                    .font(.caption)
                    .fontWeight(.bold)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.gray.opacity(0.2))
                    .clipShape(Capsule())
                Text(card.status)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.green.opacity(0.1))
                    .clipShape(Capsule())
            }
            
            Text(card.phrases[0])
                .foregroundStyle(.brown)
                .italic()
                .multilineTextAlignment(.leading)
                .padding(.top, 5)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    CharacterCardView(card: .test)
}
