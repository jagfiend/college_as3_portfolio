﻿package classes.menus // class builds the rows of the high score table...{	// import the library and class...	import flash.display.MovieClip;	import classes.app.App;	// class code...	public class HighScoreRow extends MovieClip	{		// class functions		public function HighScoreRow(app:App,index:int,yPos:Number) 		{			// constructor code			// position			x = 20;			y = yPos;			// text for dynamic fields...			_rankTxt.text = (index + 1).toString();			_playerTxt.text = app._scoresArray[index].user;			_scoreTxt.text = app._scoresArray[index].score;		} // end of functions	} // end of class} // end of package