package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Servlets.CityModel;
import com.Servlet.Dao.ConnectionProvider;
import com.Servlet.Dao.UserDao;
import javax.servlet.RequestDispatcher;

public class AddCity extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        try (PrintWriter out = response.getWriter()) {
            String cityName = request.getParameter("city_name");
            String stateName = request.getParameter("state_name");
            String startDate = request.getParameter("start_date");
            String endDate = request.getParameter("end_date");
            CityModel city = new CityModel(cityName, stateName, startDate, endDate);
            UserDao user = new UserDao(new ConnectionProvider().getConnection());
            if (user.addCity(city)) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Data Successfully Added');");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("newCity.jsp");
                rd.include(request, response);
                out.println("<center>\n"
                        + "        <p style=\"color:white\">Click below to get Back to Admin Page.</p>\n"
                        + "        <a class=\"btn btn-outline-light btn-lg\" href=\"adminprivilage.jsp\"><span class=\"fa fa-check\"></span>Admin Page</a>\n"
                        + "        <br/><br/><br/>\n"
                        + "        <center>");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Something Went wrong Please Check Your Input!');");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("newCity.jsp");
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
