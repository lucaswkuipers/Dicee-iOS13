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
	@IBOutlet weak var rollButton: UIButton!
	
	// MARK: - Life Cycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
	
	// MARK: - Functionality
	
	func setupUI() {
		rollButton.layer.cornerRadius = 15
		diceOneImageView.layer.cornerRadius = 15
		diceTwoImageView.layer.cornerRadius = 15
	}
	
	// MARK: - IBActions
	
	@IBAction func rollButtonPressed(_ sender: Any) {
		diceOneImageView.image = diceFaces.randomElement()!
		diceTwoImageView.image = diceFaces.randomElement()!
	}
	

}

