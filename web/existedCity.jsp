<%-- 
    Document   : existedCity
    Created on : Dec 14, 2020, 12:21:34 PM
    Author     : Karan
--%>

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

        <%
            String cityName = "";
            Cookie cookie[] = request.getCookies();
            if (cookie != null) {
                for (Cookie c : cookie) {
                    if (c.getName().equalsIgnoreCase("ExistedCity")) {
                        cityName = c.getValue();
                    }
                }
            }
        %>

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <h3 class="display-3">Yes, Odd-Even scheme is imposed in <u><b><%= cityName%></b></u> city. </h3>
                    <p>We advised you to check your vehicle's eligibility before driving in <%=cityName%>.</p>
                    <p>You can check you Vehicle's eligibility by entering details Below</p>

                    <main class="primary-background p-5 banner-backgroud" style="padding-bottom: 80px;">
                        <div class="conatiner">
                            <div class="col-md-6 offset-md-3">
                                <div class="card">
                                    <div class="card-header text-center primary-background">
                                        <span class="fa fa-3x fa-user-circle"></span>
                                        <p>Register Here</p>
                                    </div>
                                    <div class="card-body primary-background">

                                        <form id="reg-form" action="existedcity" method="post">
                                            <div class="form-group">
                                                <label for="exampleInputName">User Name</label>
                                                <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Username">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Car Registration Number</label>
                                                <input type="text" name="car_number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Hint: HP 23J 1235, JK 45H 3465">
                                                <small id="emailHelp" class="form-text text-muted">If You Have More then one Cars please Enter them After Entering Comma(,).</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Travel Date:</label>
                                                <input type="date" class="form-control" id="exampleInputCarNumber" name="travel_date">
                                            </div>
                                            <p><h6>If You have more then one car please enter names after entering commas.</h6></p>

                                            
                                            
                                            <button type="submit" id="submit-btn"  class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>

                </div>
            </div>
        </div>
    </body>
</html>
