<%-- 
    Document   : dateNot
    Created on : Dec 14, 2020, 3:25:11 PM
    Author     : Karan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Odd_Even</title>
        <link rel="stylesheet" type="text/css" href="css/index.css"/>
    </head>
    <body>
        <!-- NavBar Start -->
        <%@include file ="navBar.jsp" %>
        <!--NavBar Ending-->
        <%
            String username = (String) session.getAttribute("username");
             String traveldate = (String) session.getAttribute("traveldate");
             String cityname=(String)session.getAttribute("cityname");
        %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3">Dear <%=username%> on <%= traveldate %> Odd-Even scheme is not imposed in <%= cityname %>.</h3>
                    <p>You can Check for Another day by clicking below.</p>
                    
                    <a class="btn btn-outline-light btn-lg" href="existedCity.jsp"><i class="fa fa-plus" style="font-size:24px;color:blue"></i>Click here</a>
                    <br/><br/>
                    <p>Return to index Page</p>
                    
                    <a class="btn btn-outline-light btn-lg" href="freecookie"><i class="fa fa-plus" style="font-size:24px;color:blue"></i> Homepage</a>
                    
                </div></div></div>
    </body>
</html>
