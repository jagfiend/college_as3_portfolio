﻿package classes.game // class calls colony graphic and positions as appropriate...{	// import libraries...	import flash.display.MovieClip;	// class code...		public class Colony extends MovieClip	{		// class variables...		private var _game:Game;		// class methods		public function Colony(game:Game,xPos:Number) 		{			// constructor code...			_game = game;			x = xPos;			y = 690;			stop(); // pauses colony timeline to show healthy colony graphic...		} // end of functions...	} // end of class...} // end of package...