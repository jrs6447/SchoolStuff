public class Fibonacci {
    public static void function(Integer n){
        integer x = 0;
        integer y = 1;
        integer next;
        
        for(Integer i = 1; i < n; i++){
            y=next;
            next+=y; 
        }
        System.debug(next);
    }
}