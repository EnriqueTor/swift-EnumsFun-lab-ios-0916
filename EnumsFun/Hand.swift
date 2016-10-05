//
//  Hand.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Hand {
    // var
    var cards: [Card]
    var size: Int { return cards.count }
    // init
    init(cards: [Card]) {
        self.cards = cards
    }
    // methods
    func flip() -> Card? {
        if cards.isEmpty {
            return nil
        }
        else {
            let firstCard = cards.first
            cards.removeFirst()
            return firstCard
        }
    }
    
    func give(card: Card) {
        cards.append(card)
    }
    
    func lose(card: Card) {
        cards.removeFirst()
    }
    
}

