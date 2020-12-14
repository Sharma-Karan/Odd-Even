
package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Servlet.Dao.ConnectionProvider;
import com.Servlet.Dao.UserDao;
import com.Servlets.UserModal;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

public class OddEven extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        try(PrintWriter out=response.getWriter())
        {
            String city=request.getParameter("city_name");
            UserDao user=new UserDao(new ConnectionProvider().getConnection());
            if(user.checkCity(city))
            {
                Cookie cookie=new Cookie("ExistedCity",city);
                response.addCookie(cookie);
                response.sendRedirect("existedCity.jsp");
            }
            else
            {
                HttpSession session=request.getSession();
                session.setAttribute("cityname",city);
 
                response.sendRedirect("noCity.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    
}
