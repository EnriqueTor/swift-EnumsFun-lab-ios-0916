//
//  Card.swift
//  EnumsFun
//
//  Created by Michael Dippery on 8/2/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation
//enum
enum Suit: String {
    case Spades = "♠️", Diamonds = "♦️", Hearts = "♥️", Clubs = "♣️"
}

enum Rank: Int {
    case two = 2, three, four, five, six, seven, eight, nine, ten, jack, queen, king, ace
    //var
    var stringValue: String {
        if self.rawValue == 14 {
            return "A"
        } else if self.rawValue == 13 {
            return "K"
        } else if self.rawValue == 12 {
            return "Q"
        } else if self.rawValue == 11 {
            return "J"
        } else {
            return String(self.rawValue)
        }
    }
}
//class
class Card {
    //var
    var suit: Suit
    var rank: Rank
    var description: String {
        return rank.stringValue + suit.rawValue
    }
    //init
    init(rank: Rank, suit: Suit) {
        self.rank = rank
        self.suit = suit
    }
    
}
