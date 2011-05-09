/*
----------------------------------------------------------------------------
createSequence function - © 2004-2008 ade rowbotham, www.aderowbotham.com

Creates array to define random sequence of integers * with no repetition *
e.g. 8 animations to be played in random order
Returns testValues from startValue to startValue + array size 
----------------------------------------------------------------------------
*/


package com.aderowbotham.utils{

	public class SequenceRandomiser {
		
		public static function createSequence(arraySize:int,startValue:int=0):Array {
			//create array
			var outputArray:Array = new Array();			
			
			
			function checkFortestValue(testValue:int):Boolean {
				//for all testValues in the array up to the current one
				for (var j:int=0; j<i; j++) {
					//if the testValue is the same as the current one
					if (testValue == outputArray[j]) {
						//return true if the testValue already exists
						return true;
					}
				}
				//return false (only runs if testValue didn't exist)
				return false;
			}
			
			
			
			
			//for all testValues in the array
			for (var i:int=0; i<arraySize; i++) {
				
				//put random testValue into each array element in order
				outputArray[i] = startValue+Math.floor((arraySize)*Math.random());
												
				
				//stop same value being entered twice
				while (checkFortestValue(outputArray[i])) {
					
					//re-apply testValue
					outputArray[i] = startValue+Math.floor((arraySize)*Math.random());
				}
				
			}
				
			//return the array
			return outputArray;
		}
		
		
		
	}
	
}
		
