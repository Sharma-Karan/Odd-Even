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
	 <main class="d-flex align-items-center primary-background" style="height : 80vh;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <p>Login Here</p>
                            
                            <div class="card-body">
                                <form action="adminservlet" method="post">
                                    <div class="form-group">
                                        <input type="text" name="username" required class="form-control" id="exampleInput" aria-describedby="UsernameHelp" placeholder="Enter username">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="user_password" required class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
         </main>
</body>
</html>