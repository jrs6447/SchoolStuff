public virtual class Per {
    
    // Fields
    private String name;
    private String email;
    
    
    // Constructors
    
    // Default Constructor
    public Per() {
        name = '';
        email = '';
    }
    
    public Per(String aName, String anEmail) {
        name = aName;
        email = anEmail;
    }
    
    // Accessors or Getters
    
    public String getName() {
        // Check if user has permission
        return name;
    }
    
    public String getEmail() {
        // Check if user has permission
        return email;
    }
    
    // Mutators or Setters
    public void setName(String aName) {
        name = aName;
    }
    
    public void setEmail(String anEmail) {
        // We use setters to validate the values we're setting
        email = anEmail;
    }
    
    public void display() {
        System.debug('Name: ' + name);
        System.debug('Email: ' + email);
    }
    
    
}