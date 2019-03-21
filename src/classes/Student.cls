public class Student extends Person {
    private String major;
    private Integer salary;
    private Professor advisor = new Professor();
    
    public Student(String name, String email, Professor advisor){
        super(name);
        SetEmail(email); 
    }
    
    
    public void setMajor(String major){
        this.major = major;
    }
    
  

    
    public override void display(){
        system.debug('Student Information');
        super.display();
        System.debug('Major:' + major);
        system.debug('');
        system.debug('Advisor Information');
        advisor.display();
        
        
    }
    
}