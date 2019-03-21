public class ArraySort {
    
    public static List<Integer> sortArray(List<Integer> numArray) {
      
        //Get first number to be the smallest
        for(Integer i = 0; i < numArray.size(); i++){
            if(numArray[i] > numArray[i+1])
                numArray[i] = numArray[i+1];
            else if(numArray[i] > numArray[i+2])
                numArray[i] = numArray[i+2];
            else if(numArray[i] > numArray[i+3])
                numArray[i] = numArray[i+3];
            else if(numArray[i] > numArray[i+4])
                numArray[i] = numArray[i+4];
                
        }
		return numArray;
    }   
}