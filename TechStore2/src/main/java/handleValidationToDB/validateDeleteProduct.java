/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package handleValidationToDB;

import database.MessageFromDB;
import database.productManaging;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nora
 */
public class validateDeleteProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            PrintWriter out = response.getWriter();
            productManaging PM = new productManaging();

            String id = request.getParameter("id");
            System.out.println(id);
            if (id != null && !id.isEmpty()) {
               MessageFromDB res =  PM.deleteProduct(Integer.parseInt(id));
//                out.println("done");
            response.sendRedirect("admin/response.jsp?resMessage="+res.getMessage()+"&resStatus="+res.getStatus());

            } else {
            response.sendRedirect("admin/response.jsp?resMessage=error&resStatus=false");

            }
        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
