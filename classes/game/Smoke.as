﻿package classes.game // This class creates plumes of smoke using a particle effect...{	// import libraries and classes...	import flash.display.MovieClip;	import flash.events.Event;	import flash.filters.BlurFilter;	import classes.game.Particle;	// class code..	public class Smoke extends MovieClip	{		// class variables...		private var _game:Game;		private var _xPos:Number;		private var _particles:Array = new Array();		// class functions...		public function Smoke(game:Game,xPos:Number) 		{			// constructor code			_game = game;			_xPos = xPos + 10;			// listeners...			addEventListener(Event.ADDED_TO_STAGE, onAdded);			addEventListener(Event.REMOVED_FROM_STAGE, onRemove);		}				private function onAdded(e:Event):void		{			removeEventListener(Event.ADDED_TO_STAGE, onAdded);			addEventListener(Event.ENTER_FRAME,frameLoop);		}				private function onRemove(e:Event):void		{			removeEventListener(Event.ENTER_FRAME,frameLoop);			_particles = null;		}		private function frameLoop(e:Event):void		{			var _particle:Particle;			// add a blur to the particle effect			filters = [new BlurFilter(10,10,1)];			if(_game._isPaused == false){ // if statement to pause smoke effect...				// loop through the array of particles and update each one				for(var i : int = 0; i < _particles.length; i++)				{					// update the particle at index i					_particles[i].update(); 				}				// make a new particle				_particle = new Particle(Puff,this,_xPos,685); 				// property variables defined in particle class...				// set particle's velocity				_particle.xVel = randRange(-1,1); 				_particle.yVel = 0; 				// add drag				_particle.drag = 0.97; 				// add gravity				_particle.gravity = -0.3;				// randomise initial particle size				_particle.clip.scaleX = _particle.clip.scaleY = randRange(0.5,0.8);				// add shrink				_particle.shrink = 1.05;				// add fade 				_particle.fade = 0.02; 				// and add it to the array of particles				_particles.push(_particle); 				// if there are more than 60 particles delete the first 				// one in the array... 				while(_particles.length>60)				{					_particle = _particles.shift();					_particle.destroy();				}			}		}				private function randRange(min:Number, max:Number):Number		{			// returns a random value between min and max			return Math.random()*(max-min)+min; 		} // end of functions...	} // end of class...} // end of package...