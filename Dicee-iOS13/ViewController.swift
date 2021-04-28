//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let diceFaces = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

	// MARK: - IBOutlets
	
	@IBOutlet weak var diceOneImageView: UIImageView!
	@IBOutlet weak var diceTwoImageView: UIImageView!
	
	// MARK: - Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	// MARK: - IBActions
	
	@IBAction func rollButtonPressed(_ sender: Any) {
		diceOneImageView.image = diceFaces.randomElement()!
		diceTwoImageView.image = diceFaces.randomElement()!
	}
	

}

