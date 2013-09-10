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
public class CalculateRectangleArea {
            private double l, w;
    


    
    public String getarea(String length, String width) {
            
            
            l = Double.parseDouble(length);
            w = Double.parseDouble(width);
            
            
            double area = l * w;
            
                
                DecimalFormat formatter = new DecimalFormat("#000.00");
                
                area = Double.parseDouble(formatter.format(area));
                
               String strArea = Double.toString(area);
               
               strArea = "The area of the rectangle is: " + strArea;
               
                return strArea;
    }
    
}
