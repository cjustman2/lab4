<%-- 
    Document   : index
    Created on : Sep 7, 2013, 2:28:57 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="styles/css.css" rel="stylesheet" type="text/css"/>
        
        
        <script type="text/javascript">
            window.onload = inIt;
            
            function inIt(){
                var rectangleForm = document.getElementById("rectangle");
                rectangleForm.onsubmit = validateRectangleInput;
                
                var circleForm = document.getElementById("circle");
                circleForm.onsubmit = validateCircleInput;
            }
            
            function validateRectangleInput(){
                msg = "";
                var length = document.getElementById("length").value;
                var width = document.getElementById("width").value;
               
                    if(length === "" || isNaN(length) || length <= 0){
                        
                         msg += "Please Enter a valid length.";
                    }
                    
                     if(width === "" || isNaN(width) || width <= 0 ){
                         
                            if(msg !== ""){
                                msg += "\n";
                            }
                       
                       msg += "Please Enter a valid width.";
                      
                    }
                    
                    if(msg !== ""){
                        alert(msg);
                        return false;
                    }
            }
            
            
            function validateCircleInput(){
            
                msg = "";
                var radius = document.getElementById("radius").value;
                
               
                    if(radius === "" || isNaN(radius) || radius <= 0){
                        
                         msg += "Please Enter a valid radius.";
                    }
                    
                   
                    
                    if(msg !== ""){
                        alert(msg);
                        return false;
                    }
            }
            
        </script>
        

    </head>
    <body>
        <div id="container">
            
            <form id="rectangle" name="rectangle" action="AreaController" method="post">
                <fieldset>
                    <legend>Calculate Area Of Rectangle</legend>
                
                    <input type="text" id="length" name="length" placeholder="Length In Feet" />
                    
                    <br>
                
                    <input type="text" id="width" name="width" placeholder="Width In Feet" />
                    
                    <br>
                    
                    <input type="submit" id="rectangle_btn" name="btn" value="Calculate Rectangle"/> 
                    
                    
                </fieldset>
                
                
            </form>
            
            <h2>
               <%
               
                if(request.getAttribute("strArea") != null){ 
                    
                     String dMsg = "";
                
                     Object obj = request.getAttribute("strArea");
               
                            if(obj != null){
                                dMsg = obj.toString() + " sf";
                            }else{
                                dMsg = "error.";

                            }
            
                      out.println(dMsg);
                      out.println("<h3><a href='index.jsp'>Clear</a></h3>");
                } 
            %>
           
            </h2>
             <form id="circle" name="circle" action="AreaController" method="post">
                <fieldset>
                    <legend>Calculate Area Of A Circle</legend>
                
                
                    <input type="text" id="radius" name="radius" placeholder="Radius In Feet" />
                    
                    <br>
                    
                    <input type="submit" id="circle_btn" name ="btn" value="Calculate Circle"/> 
                    
                    <p id="output"></p>
                </fieldset>
                
                
            </form>
            
        </div>
    </body>
</html>
