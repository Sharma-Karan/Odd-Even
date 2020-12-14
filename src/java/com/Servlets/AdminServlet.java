/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Servlet.Dao.UserDao;
import com.Servlet.Dao.ConnectionProvider;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;

public class AdminServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String username = request.getParameter("username");
            String password = request.getParameter("user_password");
            UserDao u = new UserDao(new ConnectionProvider().getConnection());
            if (u.adminAuthenticate(username, password)) {
                Cookie cookie=new Cookie("adminname",username);
                response.addCookie(cookie);
                response.sendRedirect("adminPrivilage.jsp");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Invalid Username or Password');");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
                rd.include(request, response);
                out.println("<center>\n"
                        + "        <p style=\"color:white\">Click below to get Back to Admin Page.</p>\n"
                        + "        <a class=\"btn btn-outline-light btn-lg\" href=\"adminprivilage.jsp\"><span class=\"fa fa-check\"></span>Admin Page</a>\n"
                        + "        <br/><br/><br/>\n"
                        + "        <center>");
   
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
