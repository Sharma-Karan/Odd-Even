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
                    <h3 class="display-3">Welcome Drivers to check your vechile's eligiblity</h3>
                    <p>With mounting pollution levels in the cities, the state governments has introduced the odd-even scheme to combat hazardous levels of smog. While the pollution levels of several cities rise post Diwali celebrations, those cities has reported some of the worst Air Quality Index ratings in the last few years.</p>
                    <p>According to the scheme, odd-numbered and even-numbered vehicles will ply on the roads on alternate days. Vehicles with registration numbers ending in odd numbers will be allowed on the roads on odd days and even-numbered vehicles will be allowed on the roads on even days. For example, vehicle registration numbers ending with 0,2,4,6 or 8 are allowed on days such as the 14th, 16th or 18th of a month. Similarly, vehicles with registration numbers ending in 1,3,5,9 can ply on the roads on days such as 13th, 15th or 17th of a month.</p>
                    <p>Check your Vechile's Eligibility before riding.</p>
                    <br/>
                    <p>Enter City Name Below to check.</p>
                    <form class='form-control primary-background' action='oddeven' method='doPost'>
                    <div class="form-group">
                        <label for="exampleInputName" style="color: white"><h2>City Name</h2></label>
                        <input name="city_name" type="text" class="form-control"  id="user_name" aria-describedby="emailHelp" placeholder="Enter City'Name">
                    </div>
                    <!-- New USer Registration-->
                    <input class="btn btn-outline-light btn-lg" type='submit' placeholder="Check City" style="color: white">
                    <br/><br/><br/>
                    </form>

                </div>
            </div>
        </div>
        <br/>


    </body>
</html>