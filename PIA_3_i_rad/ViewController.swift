//
//  ViewController.swift
//  PIA_3_i_rad
//
//  Created by Finlay MacGregor on 9/16/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // simple Boolean variable enough for 2 players
    var playerOneTurn = true

    @IBOutlet weak var Tile1: UIButton!
    @IBOutlet weak var Tile2: UIButton!
    @IBOutlet weak var Tile3: UIButton!
    @IBOutlet weak var Tile4: UIButton!
    @IBOutlet weak var Tile5: UIButton!
    @IBOutlet weak var Tile6: UIButton!
    @IBOutlet weak var Tile7: UIButton!
    @IBOutlet weak var Tile8: UIButton!
    @IBOutlet weak var Tile9: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clickTile(_ sender: UIButton) {
        
        if(sender.backgroundColor == UIColor.red || sender.backgroundColor == UIColor.green)
        {
            // this will end clickTile function without changing color or turn
            return
        }
        
        if(playerOneTurn)
        {
            // sender in this case means the button that has been pressed
            sender.backgroundColor = UIColor.red
            // toggle players
            playerOneTurn = false
        }
        else
        {
            sender.backgroundColor = UIColor.green
            playerOneTurn = true
        }
        
        checkWon()

    }
    
    // check win conditions
    func checkWon()
    {
        var winnerColor : UIColor?
        
        // ! problem ! if the 2nd row is all background color, then it negates the row 1 win
        if(Tile1.backgroundColor == Tile2.backgroundColor && Tile1.backgroundColor == Tile3.backgroundColor)
        {
            winnerColor = Tile1.backgroundColor
        }
        if(Tile4.backgroundColor == Tile5.backgroundColor && Tile4.backgroundColor == Tile6.backgroundColor)
        {
            winnerColor = Tile4.backgroundColor
        }
        
        
        if(winnerColor == UIColor.red)
        {
            print("Player 1 wins!")
        }
        
        if(winnerColor == UIColor.green)
        {
            print("Player 2 wins!")
        }
        
    }

}

