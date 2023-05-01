/**
 * 1. Create a abstract class called Shape
   * protected instance fields : 
     - name as String 
     - area as Decimal
   * constructor 
     - 1 param|arg constructor to set the name
   * method 
     - abstract void method calculateArea with no param 
2. Create concrete child class of Shape - class Rectangle 
   * protected instance fields : 
     - width as Decimal 
     - height as Decimal
   * constructor 
     - no param|arg constructor to set 
       - the name to Just Rectangle
       - width and height to 1
     - 3 arg constructor to set 
       - name, width ,height 
   * method 
     - implement calculateArea and calculate the area 
       - set the value of area to width*height 
Akbar — 04/26/2023 3:21 PM
3. Create concrete child class of Shape - class Circle 
   * instance fields : 
     - radius as Decimal 
   * constructor 
     - no param|arg constructor to set 
       - the name to Just Circle
       - radius to 1
     - 2 arg constructor to set 
       - name, radius
   * method 
     - implement calculateArea and calculate the area 
       - set the value of area to Math.PI * radius * radius
Akbar — 04/26/2023 3:31 PM
4. Create a child class of Rectangle - class Square 
   * constructor 
     - 2 arg constructor to set 
       - name, side
       - set the value of width and height to value side
       - super(name,side,side) or just use this.width=side... 
5. Create an interface called Drawable
   * abstract method draw with no param no return type
Let Rectangle , Circle implements Drawable interface
   - provide implementation for draw method
     - simply print the step to draw the shape
   - public class Rectangle extends Shapes implements Drawable{...}
Akbar — 04/26/2023 3:39 PM
6. Add a non-abstract void method called displayShapeInfo to Shape class
 - Print :  The Shape is nameOfShapeHere and the area is areaValueHere

7. Create an interface called Rollable 
   * abstract void method roll 
   * Circle implements Rollable
  public class Circle extends Shapes implements Drawable,Rollable{

  }
 
Finally, Create anon-apex file 
Create object of all things you can create object out of. 
Create a List of Shape add all different Shapes 
Create Drawable and assign object to it 
Call the methods and print the results
*/