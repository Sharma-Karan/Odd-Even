<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/index.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <%@include file="navBar.jsp" %>
    <main class="primary-background p-5 banner-backgroud" style="padding-bottom: 80px;">
        <div class="conatiner">
            <div class="col-md-6 offset-md-3">
                <div class="card">
                    <div class="card-header text-center">
                        <span class="fa fa-3x fa-user-circle"></span>
                        <p>Register Here</p>
                    </div>
                    <div class="card-body">

                        <form id="reg-form" action="register" method="post">
                            <div class="form-group">
                                <label for="exampleInputName">User Name</label>
                                <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Username">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We will never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Car Registration Name</label>
                                <input type="text" class="form-control" id="exampleInputCarNumber" name="user_CarNumber" placeholder="Hint: HP 23J 1235, JK 45H 3465">
                            </div>
                            <p><h6>If You have more then one car please enter names after entering commas.</h6></p>

                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
                            </div>
                            <div class="container text-center" id="loader" style="display: none;">

                                <span class="fa fa-refresh fa-spin fa-3x"></span>
                                <h4>Please Wait</h4>
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