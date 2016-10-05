//
//  Deck.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation

class Deck {
    // var
    var cards = [Card]()
    // init
    init() {
        for suitValue in ["♠️", "♦️", "♥️", "♣️"] {
            for rankValue in 2...15 {
                if let suit = Suit(rawValue: suitValue) {
                    if let rank = Rank(rawValue: rankValue) {
                        cards.append(Card(rank: rank, suit: suit))
                    }
                }
            }
        }
        cards.shuffle()
    }
    // methods
    func split() -> ([Card], [Card]) {
        return cards.split()
    }
    
    
}


