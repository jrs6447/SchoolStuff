public class RotateArray {

    public static void rotate(List<Integer> listint, Integer n){
        if(n > 5){
        for(Integer i = 0; i < listint.size(); i++){
           listint[i] = listint[i-(math.mod(n, 5))];
        }
        System.debug(listint);
        }
        else if(n == 4){
            listint[0] = listint[4];
            listint[1] = listint[0];
            listint[2] = listint[1];
            listint[3] = listint[2];
            listint[4] = listint[3];
            System.debug(listint);
        }
        else if(n == 3){
            listint[0] = listint[3];
            listint[1] = listint[4];
            listint[2] = listint[0];
            listint[3] = listint[1];
            listint[4] = listint[2];
            System.debug(listint);
        }
        else if(n == 2){
            listint[0] = listint[2];
            listint[1] = listint[3];
            listint[2] = listint[4];
            listint[3] = listint[0];
            listint[4] = listint[1];
            System.debug(listint);
        }
        else if(n == 1){
            listint[0] = listint[1];
            listint[1] = listint[2];
            listint[2] = listint[3];
            listint[3] = listint[4];
            listint[4] = listint[0];
            System.debug(listint);
        } 
        else if(n == 0 || n == 5){
            listint[0] = listint[0];
            listint[1] = listint[1];
            listint[2] = listint[2];
            listint[3] = listint[3];
            listint[4] = listint[4];
            System.debug(listint);
        }
        
        
  }   
}