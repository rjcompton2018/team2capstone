<!DOCTYPE html>
<html>
<head>
    <!--Mary Shiner CODE -- 9/24/2019 -->
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        ReServe
    </title>
    <!--Links to CSS (Bootstrap)-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/StyleReServe.css" />
    <!--Creates Icon in Tab-->
    <link rel="shortcut icon" href="images/tea-time-24-292243.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!--Link to JavaScript needed for Bootstrap functionality Kelly Kurkowski 9/20/19-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <!--Navbar -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
        <li style="list-style-type: none; text-decoration:none;"><a href="ReServe-Main.html"><img src="images/tea-time-72-292243.png"></a></li>
        <a class="navbar-brand" href="ReServe-Main.html">ReServe</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <!--Navbar Links -->
                    <a class="nav-link" href="ReServe-Login.html">Login</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- HTML -->
    <!--Background Image Bar -->
    <div class="background">
        <img src="images/architecture-chairs-design-2894275.jpg" style="box-sizing: border-box; width: 100%; height: 230px; background-size: 100% 100%; box-shadow: 2px 2px 40px rgba(0, 0, 0, .4),-2px 2px 20px rgba(0, 0, 0, .4);">
        <div class="centered" style="top:15%;"><h1>~ ReServe ~</h1></div>
        <div class="centered" style="top:22%;"><p>Your personal restaurant waitime calculator!</p></div>
    </div>

    <!--RICHARD COMPTON CODE -- 9/15/2019 -->
    <div class="container" style="margin-top:30px">
        <div class="row">
            <div class="col-sm-8">
                <h2>ReServe Restaurant Signup Form</h2>
                <div class="menu">
                    <p></p>
                    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up YOUR Restaurant</button>

                </div>
            </div>



            <!--Signup Page Form -->
            <div id="id01" class="modal">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <form class="modal-content" action="/action_page.php">

                    <div class="container" style="padding-top:12px;">

                        <h1>Restaurant Sign Up</h1>

                        <p>Please fill in this form to create an account for your restaurant.</p>

                        <hr>

                        <label for="email"><b>Email</b></label>
                        <p></p>
                        <input type="text" placeholder="Enter Email" name="email" required>

                        <p></p>
                        <p></p>
                        <label for="restaurantName"><b>Restaurant Name</b></label>
                        </br>
                        <input type="text" placeholder="Enter Restaurant Name" name="restaurantName" required>
                        <p></p>
                        <label for="psw"><b>Password</b></label>
                        <p></p>
                        <input type="password" placeholder="Enter Password" name="psw" required>
                        <p></p>
                        <label for="psw-repeat"><b>Repeat Password</b></label>
                        <p></p>
                        <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
                        <p></p>
                        <label> <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember my restaurant </label>

                        <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy Agreement</a>.</p>

                        <div class="clearfix">

                            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel Signup</button>
                            <button type="submit" class="signupbtn">Sign Up</button>



                        </div>
                    </div>
                </form>

                <!--This is the footer, it gives the address and copyright information of the website-->
                <div class="text-center" style="padding-top:12px; padding-bottom:12px; background-color:#ED6C06; color:white;">
                    &copy; Copyright 2019 ~ ReServe ~
                </div>
            </div>

            <p></p>
        </div>
    </div>
    </div>
    </div>
    <p></p>
    <p></p>
    <!--This is the footer, it gives the address and copyright information of the website-->
    <div class="text-center" style="padding-top:12px; padding-bottom:12px; background-color:#ED6C06; color:white;">
        &copy; Copyright 2019 ~ ReServe ~
    </div>
</body>
</html>
<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
