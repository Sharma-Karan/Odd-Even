

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
            String username = (String) session.getAttribute("username");
            String carnumbers = (String) session.getAttribute("carnums");
            String traveldate = (String) session.getAttribute("traveldate");
            String crnm[] = carnumbers.trim().split(",");
            int carnums = carnumbers.trim().split(",").length;
            int d = Integer.parseInt(traveldate.substring(8, 10))%2;
            String day = (d  == 0) ? "Even" : "Odd";
        %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
                    <p>Your vehicle's Details are noted below:</p>
                    <p>Dear <%=username%> you have registered <%=carnums%> cars numbers.<p>
                    <p>On date <%= traveldate%> Odd-Even Scheme is working in city,and as you can see only <%=day%> vehicles are allowed to drive on that day.</p>
                    <p><h4>
                        Check Below:
                        <br/>
                        <table style="width:100%">
                            <tr>
                                <th>
                                    Sr Number
                                </th>
                                <th>
                                    Car Number
                                </th>
                                <th>
                                    Allowed
                                </th>
                            </tr>
                            <%for (int i = 0; i < carnums; i++) {
                                    int len = crnm[i].length();
                                    int chk = Integer.parseInt(crnm[i].substring(len - 1, len)) % 2;
                                    
                            %> 

                            <tr>
                                <td><%= i + 1%></td>
                                <td><%= crnm[i]%></td>
                                <td><%= chk==d?"Allowed":"Not Allowed" %></td>
                            </tr><%}%>
                        </table>
                        <br/><br/>
                        <p>Click Below button to return to HomePage</p>
                        <a class="btn btn-outline-light btn-lg" href="freecookie"><i class="fa fa-plus" style="font-size:24px;color:blue"></i>  Return</a>
                    
                    </h4></p>
                </div></div></div>

    </body>
</html>
