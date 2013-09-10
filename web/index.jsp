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
        <link href="styles/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
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
                        
                         msg += "Please Enter a valid Length";
  
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
        <div class="container">
            
            <form id="rectangle" name="rectangle" action="AreaController?output=index.jsp" method="post">
                <h3>Calculate Area Of Rectangle</h3>
                
                    <input type="text" id="length" name="length" placeholder="Length In Feet" />
                    
                    <br>
                
                    <input type="text" id="width" name="width" placeholder="Width In Feet" />
                    
                    <br>
                    
                    <input type="submit"  class="btn" id="rectangle_btn" name="btn" value="Calculate Rectangle"/> 
                    
                    
                
                
                
            </form>
            <hr>
            
            <h2>
               <%
               
                if(request.getAttribute("strArea") != null){ 
                    out.println("<div class='alert'>");
                     String dMsg = "";
                
                     Object obj = request.getAttribute("strArea");
               
                            if(obj != null){
                                
                                if(obj.toString().equalsIgnoreCase("Enter correct information")){
                                dMsg = obj.toString();
                                }else{
                                dMsg = obj.toString() + " sf";
                                }
                                
                            }else{
                                dMsg = "Error.";

                            }
            
                      
                      out.println(dMsg + "<h3><a href='index.jsp' class='btn'>Clear</a></h3></div><hr>");
                } 
            %>
           
            </h2>
             <form id="circle" name="circle" action="AreaController?output=index.jsp" method="post">
                
                    <h3>Calculate Area Of A Circle</h3>
                
                
                    <input type="text" id="radius" name="radius" placeholder="Radius In Feet" />
                    
                    <br>
                    
                    <input type="submit"  class="btn" id="circle_btn" name ="btn" value="Calculate Circle"/> 
                    
                    <p id="output"></p>
                
                
                
            </form>
            
        </div>
    </body>
</html>
