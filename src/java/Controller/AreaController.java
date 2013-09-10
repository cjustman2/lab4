/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CalculateCircleArea;
import model.CalculateRectangleArea;


/**
 *
 * @author chris
 */
@WebServlet(name = "AreaController", urlPatterns = {"/AreaController"})
public class AreaController extends HttpServlet {
    
      String strArea = null;
            String l = null;
            String w = null;
            String r = null;
            String output = null;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            
            
          
            
            
            String requestingForm = request.getParameter("btn");
              
              
              switch(requestingForm){
                  case "Calculate Rectangle":
                      if(request.getParameter("length").equals("") ||  request.getParameter("width").equals("")){
                          
                          strArea = "Enter correct information";
                          break;
                      }
                        
                       CalculateRectangleArea ac = new CalculateRectangleArea();
                       l = request.getParameter("length");
                        w = request.getParameter("width");
                      strArea = ac.getarea(l, w);
                      break;
                      
                  case "Calculate Circle":
                        if(request.getParameter("radius").equals("")){                  
                          strArea = "Enter correct information";
                          break;
                      }
                        
                      CalculateCircleArea ca = new CalculateCircleArea();
                      r = request.getParameter("radius");
                      strArea = ca.getarea(r);
                      break;
                      
                  default:
                      strArea = "There was an error.";
                     
              }
              
              
              output = request.getParameter("output");
              
              
               
              request.setAttribute("strArea",strArea);
                
        } catch(Exception e){
            System.out.println(e.getMessage());
        }//finally {            
           // out.close();
       // }
        
             RequestDispatcher view =
                request.getRequestDispatcher("/"+output);
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
