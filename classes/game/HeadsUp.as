﻿package classes.game // class calls dynamic text fields and draws the players heads up display of score, ammo count and wave number...{		// import class...	import classes.shared.DynamicTextField;	// class code...	public class HeadsUp extends DynamicTextField	{		// class variables...		// labels...		private var _waveLabel = new DynamicTextField();		private var _scoreLabel = new DynamicTextField();		private var _ammoLabel = new DynamicTextField();		// values...		public var _waveValue = new DynamicTextField();		public var _scoreValue = new DynamicTextField();		public var _ammoValue = new DynamicTextField();		// class functions... 		public function HeadsUp() 		{			// constructor code...			// add label fields...			// wave label...			addChild(_waveLabel);			_waveLabel.x = 100;			_waveLabel.y = 25;			_waveLabel.txt.text = "wave";			// score label...			addChild(_scoreLabel);			_scoreLabel.x = 700;			_scoreLabel.y = 25;			_scoreLabel.txt.text = "score";			// ammo label...			addChild(_ammoLabel);			_ammoLabel.x = 380;			_ammoLabel.y = 750;			_ammoLabel.txt.text = "ammo:";			// add value fields...			// wave value...			addChild(_waveValue);			_waveValue.x = 100;			_waveValue.y = 50;			_waveValue.txt.text = 1;			// score value...			addChild(_scoreValue);			_scoreValue.x = 700;			_scoreValue.y = 50;			_scoreValue.txt.text = 0;			// ammo value...			addChild(_ammoValue);			_ammoValue.x = 450;			_ammoValue.y = 750;			_ammoValue.txt.text = 12;		} // end of functions	} // end of class} // end of package