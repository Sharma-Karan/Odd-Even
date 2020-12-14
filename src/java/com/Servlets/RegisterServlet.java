package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Servlets.UserModal;
import com.Servlet.Dao.UserDao;
import com.Servlet.Dao.ConnectionProvider;
public class RegisterServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest request,HttpServletResponse  response)
	throws ServletException,IOException
	{
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter())
		{
			String name=request.getParameter("user_name");
                        String email=request.getParameter("user_email");
                        String cars=request.getParameter("user_CarNumber");
                        
                        UserModal user=new UserModal(name,email,cars);
                        UserDao u=new UserDao(new ConnectionProvider().getConnection());
                        if(u.saveUser(user))
                        {
                            out.println("");
                        }
                        else
                        {
                            out.println("");
                        }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}