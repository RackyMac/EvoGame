package  {
	import flash.display.MovieClip;
	import flash.display.Sprite; 
	import flash.display.Stage;
	import flash.events.MouseEvent;
	  
	 
	public class main extends MovieClip{
		
	public var myCreature:MovieClip = new creature();
	public var myNewCreature:MovieClip = new creature();
	
	
		public function main() {
			// constructor code
			
			//add it to the display list
			stage.addChild(myCreature);
			myCreature.x = 300;
			myCreature.y = 300;
			
			myCreature.addEventListener(MouseEvent.CLICK,addCreature);
			
			
		}
		function addCreature(event:MouseEvent):void{
			var myArray:Array = new Array();
			var creatureInstance:MovieClip;
			
			for(var n:int = 0; n<10; n++){
      		creatureInstance = new creature;
     		myArray.push(creatureInstance);
     		stage.addChild(creatureInstance);
			//creatureInstance.x = myCreature.x + 10;
			creatureInstance.x = Math.floor(Math.random()*550);
			creatureInstance.y = Math.floor(Math.random()*400);
			
			creatureInstance.addEventListener(MouseEvent.CLICK,addCreature);
    		}
			
			
			
			
			
			//create an array to store the newCreatures and apply the move to the last to enter the array
			//myNewCreature.x = myCreature.x + Math.floor(Math.random() * 41) + 10;;
			//myNewCreature.y = myCreature.y + Math.floor(Math.random() * 41) + 10;;
			
			
			trace(myArray.length);
			
		}

	}
	
}
