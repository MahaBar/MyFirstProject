public class Order {
    
    public String product;
    public String customerName;
    public Decimal price;

    // create a STATIC field tax rate
    public static Decimal taxRate;

    // constructor
    public Order(String product, String customerName, Decimal price ) {
        this.product        = product;
        this.customerName   = customerName;
        this.price          = price;
    }

    // method
    public void printOrder(){
        
        // this keyword represent the current object calling the method
        System.debug(this); 
        // System.debug('tax rate is ' + taxRate); 
        // System.debug('Order:[customerName=' + this.customerName   
        // + ', price='    + this.price
        // + ', product='  + this.product   + ']'); 
    }

    // STATIC METHOD
    public static void  showTaxRate(){
        System.debug('taxRate value is : ' + taxRate);
    }
}






















