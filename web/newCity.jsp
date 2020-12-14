
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
        <main class="primary-background p-5 banner-backgroud" style="padding-bottom: 80px;">
        <div class="conatiner">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header text-center">
                        <span class="fa fa-3x fa-plus"></span>
                        <p>Add Below</p>
                    </div>
                    <div class="card-body">

                        <form id="reg-form" action="addcity" method="post">
                            <div class="form-group">
                                <label for="exampleInputName">City Name</label>
                                <input name="city_name" type="text" class="form-control" id="city_name" aria-describedby="namehelp" placeholder="Enter City's Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName">State Name</label>
                                <input type="text" name="state_name" class="form-control" id="exampleInputName" aria-describedby="namehelp" placeholder="Enter State's Name">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputDate">Start Date</label>
                                <input type="Date" name="start_date" class="form-control" id="exampleInputStartDate" aria-describedby="datehelp">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputDate">End Date</label>
                                <input type="Date" name="end_date" class="form-control" id="exampleInputStartDate" aria-describedby="datehelp">
                            </div>
                            <button type="submit" id="submit-btn"  class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    </body>
</html>
