//
//  ViewController.swift
//  EnumsFun
//
//  Created by Jim Campagno on 7/20/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var opponentCardLabel: UILabel!
    @IBOutlet weak var playerCardLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var opponentScoreLabel: UILabel!
    @IBOutlet weak var flipCardButton: UIButton!

    let game = GameEngine(player1: "Enrique", player2: "Paul")
    
    @IBAction func flipCard(_ sender: UIButton) {

        let turn = game.playOneTurn()
        game.playOneTurn()
        winnerLabel.text = "\(turn.0.name) is the winner!"
        playerCardLabel.text = turn.1?.description
        opponentCardLabel.text = turn.2?.description
        playerScoreLabel.text = String(game.player1.hand.cards.count)
        opponentScoreLabel.text = String(game.player2.hand.cards.count)
        }
        
        
}
