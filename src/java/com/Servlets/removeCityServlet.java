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

@WebServlet(name = "removeCityServlet", urlPatterns = {"/removeCityServlet"})
public class removeCityServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            UserDao user = new UserDao(new ConnectionProvider().getConnection());
            if (user.removeCity(request.getParameter("city_name"))) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('City Deleted from database!');");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("removeCity.jsp");
                rd.include(request, response);
                out.println("<center>\n"
                        + "        <p style=\"color:white\">Click below to get Back to Admin Page.</p>\n"
                        + "        <a class=\"btn btn-outline-light btn-lg\" href=\"adminPrivilage.jsp\"><span class=\"fa fa-check\"></span>Admin Page</a>\n"
                        + "        <br/><br/><br/>\n"
                        + "        <center>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Something Went Wrong.Please check your Input.');");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("removeCity.jsp");
                rd.include(request, response);
                out.println("<center>\n"
                        + "        <p style=\"color:white\">Click below to get Back to Admin Page.</p>\n"
                        + "        <a class=\"btn btn-outline-light btn-lg\" href=\"adminPrivilage.jsp\"><span class=\"fa fa-check\"></span>Admin Page</a>\n"
                        + "        <br/><br/><br/>\n"
                        + "        <center>");
            }
        }
    }
}
