/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.DecimalFormat;

/**
 *
 * @author chris
 */
public class CalculateCircleArea{
             private double radius;
             private double area = 0;
             
    
    public String getarea(String radius) {
        
            this.radius = Double.parseDouble(radius);
            
             area = Math.PI * this.radius * this.radius;
           
            
            
           
            
                
                DecimalFormat formatter = new DecimalFormat("#0.00");
                
                area = Double.parseDouble(formatter.format(area));
                
               String strArea = Double.toString(area);
               
               strArea = "Area of the circle is: " + strArea;
        
        return strArea;
    }
    
}
