<%@ page import="com.Servlet.Dao.UserDao,com.Servlet.Dao.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Odd_Even</title>
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
    </head>
    <body>
        <!--NavBar
        Start-->
        <%@include file="navBar.jsp" %>
        <!--NavBar 
            End-->
       <!--
            Cookie cooki[] = request.getCookies();
            String admin = "";
            if (cooki != null) {
                for (Cookie c : cooki) {
                    if (c.getName().equalsIgnoreCase("adminname")) {
                        admin = c.getValue();
                    }
                }8/-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3">Welcome ,to Site's admin Page.</h3>
                    <br/>
                    <br/>
                    <h2>
                        <p>Click below Button to add new City for this Scheme.</p>
                    </h2><br/>
                    <a class="btn btn-outline-light btn-lg" href="newCity.jsp"><i class="fa fa-plus" style="font-size:24px;color:blue"></i>  Add City</a>
                    <br/><br/><br/>
                    <h2>
                        <p>Click below Button to delete cities from Scheme List.</p>
                    </h2><br/>
                    <a class="btn btn-outline-light btn-lg" href="removeCity.jsp"><i class="fa fa-shopping-basket" style="font-size:24px;color:red"></i>  Delete City</a>
                    <br/><br/><br/>
                   <!-- <h2>
                        <p>Click below Button to add new Admin.</p>
                    </h2><br/>
                    <a class="btn btn-outline-light btn-lg" href="#"><i class="fa fa-plus" style="font-size:24px"></i>  Add new Admin</a>
                    <br/><br/><br/>-->
                    <h2>
                        <p>Click below to Logout from Admin's Privilages.</p>
                    </h2><br/>
                    <a class="btn btn-outline-light btn-lg" href="logout"><span class="fa fa-check"></span>Logout</a>
                    <br/><br/><br/>
                </div>
            </div>
        </div>
    </body>
</html>


