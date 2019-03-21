public class Factorial {
    public static void compute(Integer n){
        Integer subtotal = 1;
        
        for(Integer i = 1; i <= n; i++){
            subtotal = subtotal*i;
        }
        System.debug('The factorial of ' + n + ' is ' + subtotal);
    }
}