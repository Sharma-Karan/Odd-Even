<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.jsp">Odd-Even Tracker</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
                    </li>
                    
                </ul>
                <%

                    Cookie cookies[] = request.getCookies();
                    String adminName = null;
                    if (cookies != null) {
                        for (Cookie c : cookies) {
                            if (c.getName().equalsIgnoreCase("adminname")) {
                                adminName = c.getValue();
                            }
                        }
                    }
                    if (adminName != null) {%>
                <ul class="nav navbar-nav navbar-right">
                    <li class="nav-item active">
                        <a class="nav-link" href="adminPrivilage.jsp"><i class="fa fa-check-circle-o"></i>  Hello, <%= adminName%><span class="sr-only">(current)</span></a>
                    </li>
                </ul><%} else {%>
                <ul class="nav navbar-nav navbar-right">

                    <li><a class="btn btn-outline-light" href="admin_login.jsp"><i class="fa fa-cogs"></i>    Admin Login</a></li>

                    <li></li>
                </ul>
                <%}%>
            </div>
        </nav>
    </body>
</html>