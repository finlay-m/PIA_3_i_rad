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
    var winnerColor : UIColor?

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
        
        Tile1.backgroundColor = UIColor.blue
        Tile2.backgroundColor = UIColor.blue
        Tile3.backgroundColor = UIColor.blue
        Tile4.backgroundColor = UIColor.blue
        Tile5.backgroundColor = UIColor.blue
        Tile6.backgroundColor = UIColor.blue
        Tile7.backgroundColor = UIColor.blue
        Tile8.backgroundColor = UIColor.blue
        Tile9.backgroundColor = UIColor.blue
        
    }
    
    
    @IBAction func clickTile(_ sender: UIButton) {
        
        if(sender.backgroundColor != UIColor.blue)
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
        checkForThree(t1: Tile1, t2: Tile2, t3: Tile3)
        checkForThree(t1: Tile4, t2: Tile5, t3: Tile6)
        checkForThree(t1: Tile7, t2: Tile8, t3: Tile9)
        
        checkForThree(t1: Tile1, t2: Tile4, t3: Tile7)
        checkForThree(t1: Tile2, t2: Tile5, t3: Tile8)
        checkForThree(t1: Tile3, t2: Tile6, t3: Tile9)
        
        checkForThree(t1: Tile1, t2: Tile5, t3: Tile9)
        checkForThree(t1: Tile7, t2: Tile5, t3: Tile3)
        
        if(winnerColor == UIColor.red)
        {
            print("Player 1 wins!")
        }
        
        if(winnerColor == UIColor.green)
        {
            print("Player 2 wins!")
        }
    }
    
    // these t1 parameters are whatever tiles are sent, so t1 is not necessarily Tile1
    func checkForThree(t1 : UIButton, t2 : UIButton, t3 : UIButton)
    {
        if(t1.backgroundColor == t2.backgroundColor && t1.backgroundColor == t3.backgroundColor && t1.backgroundColor != UIColor.blue)
        {
            winnerColor = t1.backgroundColor!
        }
    }

}
