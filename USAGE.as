import com.aderowbotham.utils.SequenceRandomiser;

//create a sequence of length 10
var mySequence:Array = SequenceRandomiser.createSequence(10);
trace(mySequence);    //e.g. 5,0,7,8,2,4,1,9,6,3

//create a sequence of length 10, from -5
mySequence = SequenceRandomiser.createSequence(10,-5);
trace(mySequence);    //e.g. -4,-5,0,-3,2,1,3,-2,4,-1