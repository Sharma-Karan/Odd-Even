<%@page import="com.Servlet.Dao.ConnectionProvider,com.Servlet.Dao.UserDao,java.util.*,com.Servlets.CityModel" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Odd_Even</title>
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
    </head>
    <body>
        <!-- NavBar Start -->
        <%@include file ="navBar.jsp" %>
        <!--NavBar Ending-->

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3">Dear User,No Odd Even Scheme is imposed in <%= (String)session.getAttribute("cityname") %></h3>
                    <p>Please check following List of Cities where ODD-EVEN is Imposed.</p>
                    <%
                        ArrayList<CityModel> list=new UserDao(new ConnectionProvider().getConnection()).getAllCities();
                        int i=1;
                        for(CityModel c:list)
                        {
                    %>
                    <p><%= i++ %> <%= c.getCityname() %> city of state <%= c.getStatename() %> where this scheme imposed on <%= c.getStartDate() %> and ended on <%= c.getEndDate() %></p>
                    <%}%>
                    <br/></div>
            </div></div>
    </body>
</html>
