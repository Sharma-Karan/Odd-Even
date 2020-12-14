<%@page import ="com.Servlet.Dao.UserDao,com.Servlet.Dao.ConnectionProvider,java.util.ArrayList,java.util.List,com.Servlets.CityModel" %>
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
                    <div class="form-group">
                        <form id="reg-form" action="removecityservlet" method="post">
                            <p>Enter The name of city below to remove the city!</p>
                            <label for="exampleInput">City Name</label>
                            <input name="city_name" type="text" class="form-control" id="city_name" aria-describedby="city_nameHelp" placeholder="Enter City's Name"><br/>
                            <button type="submit" id="submit-btn"  class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- End of City List -->
                </div>
            </div>
        </div>
    </body>
</html>
