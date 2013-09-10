<%-- 
    Document   : message
    Created on : Sep 7, 2013, 12:51:45 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculated Area</title>
        
        <link href="styles/css.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
           <h1 id="message"> 
               <span id="defaultMessage">The calculated area of the rectangle is: </span>
            <%
                
                String dMsg = "There was an error.";
                
               Object obj = request.getAttribute("area");
               
               if(obj != null){
                   dMsg = obj.toString() + " sf";
               }
            
               out.println(dMsg);
            %>
        
        
        </h1>
            
            <a href="challenge1.html" style="margin-left: 200px">Back</a>
    </body>
</html>
