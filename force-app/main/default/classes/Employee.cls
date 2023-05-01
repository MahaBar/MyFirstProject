public class Employee {
    
    public String name;     // variables
    public String role;
    public Integer id;

    public static Decimal taxRate;      // static variable, visible to constructor
                                        // value should be assigned by class name

    public Employee(String name, String role, Integer id){      // constructor
        this.name = name;       // represents the current instance of the class in which it appears
        this.role = role;
        this.id = id;
    }

    /* public Employee(String name, Integer id){        // constructor
        this.name = name;
        this.id = id;
    } */

    public void print(){        // no return no argument
        System.debug(this);
    }

    public void work(){     // no return no argument with variable
        System.debug('The employee ' + name + ' works');
    }

    // it should accept one external data as text
    public void study(String topic){        // no return one argument with variable
        System.debug('The employee ' + name + ' studies ' + topic + ' exam');
    }

    // it should be simply change the role field of current object calling the method to new role
    public void changeRole(String newRole){
        this.role = newRole;
        System.debug('The employee ' + name + '\'s new role is: ' + role);
    }

    // no return multi arguments
    public void averageScore(Decimal exam1, Decimal exam2, Decimal exam3, Integer examN){
        Decimal average = (exam1 + exam2 + exam3) / examN;
        System.debug('The employee ' + name + '\'s average score is: ' + average);
    }

    public static Decimal earn(Decimal grossPay){       // static one argument with return 
        Decimal salary = grossPay * taxRate;
        return salary;                                  // should be called by class name
    }

}


// if void we can use any kind variables, and we need to use object 
// if static, so I can not use instance variables and we need to reference to class name, not to object name


















