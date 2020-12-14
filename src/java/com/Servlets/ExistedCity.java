
package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Servlet.Dao.UserDao;
import com.Servlet.Dao.ConnectionProvider;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ExistedCity", urlPatterns = {"/ExistedCity"})
public class ExistedCity extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try (PrintWriter out = response.getWriter()) {
            String cityName = "";
            Cookie cookie[] = request.getCookies();
            if (cookie != null) {
                for (Cookie c : cookie) {
                    if (c.getName().equalsIgnoreCase("ExistedCity")) {
                        cityName = c.getValue();
                    }
                }
            }
            String date = request.getParameter("travel_date");
            UserDao user = new UserDao(new ConnectionProvider().getConnection());
            String username = request.getParameter("user_name");
            //out.println(user.checkDates(cityName, date));
            if (user.checkDates(cityName, date)) {

                String carnumber = request.getParameter("car_number");

                HttpSession session = request.getSession();
                session.setAttribute("cityname",cityName);
                session.setAttribute("carnums", carnumber);
                session.setAttribute("username", username);
                session.setAttribute("traveldate", date);
                response.sendRedirect("info.jsp");

            } else {
                HttpSession session = request.getSession();
                session.setAttribute("cityname",cityName);
                session.setAttribute("username", username);
                session.setAttribute("traveldate", date);
                response.sendRedirect("dateNot.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isEven(String num) {
        int l = num.length();
        if (Integer.parseInt((num.substring(l - 1, l))) % 2 == 0) {
            return true;
        }
        return false;
    }
}
