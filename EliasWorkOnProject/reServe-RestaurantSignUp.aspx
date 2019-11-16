<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reServe-RestaurantSignUp.aspx.cs" Inherits="ReServeAPI_v2._0.restaurantSignUpPage" %>


<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ReServe
    </title>

    <!--Links to CSS (Bootstrap)-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/StyleReServe.css" />


    <!--Creates Icon in Tab-->
    <link rel="shortcut icon" href="images/tea-time-24-292243.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top">
  <li style="list-style-type: none; text-decoration:none;"><a href="ReServe-Main.html"><img src="images/tea-time-72-292243.png"></a></li>
  <li style="list-style-type: none; text-decoration:none;"></li>
  <a class="navbar-brand" href="ReServe-Main.html">ReServe</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="ReServe-Login.html">Login</a>
      </li>    
    </ul>
  </div>  
</nav>
<body>
<!-- HTML -->
<div class="background">
  <div class="centered" style="top:15%;";><h2>~ ReServe ~</h2></div>
  </br>
  <div class="centered" style="top:22%;"><h2>Your personal restaurant waitime calculator!</h2></div>
</div>

<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-8">
      <h2>ReServe Restaurant Signup Form</h2>
	  <div class="menu">
		<br/>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up YOUR Restaurant</button>

          <br />

</div>
</div>




      <div id="id01" class="modal">

          <span onclick="document.getElementById('id01').style.display='block'" class="close" title="Close Modal">&times;</span>
          <form runat="server" class="modal-content">

              <div class="container">

                  <h1>Restaurant Sign Up</h1>

                  <p>Please fill in this form to create an account for your restaurant.</p>

                  <hr>

                  <label for="email"><b>Email</b></label>
                  <br />
                  <asp:TextBox runat="server" id="txtEmail" type="text" placeholder="Enter Email" name="email" required />

                  <br />
                  <br />
                  <label for="restaurantName"><b>Restaurant Name</b></label>
                  <br />
                  <input runat="server" id="txtName" type="text" placeholder="Enter Restaurant Name" name="restaurantName" required />

                  <br />
                  <br />
                  <label for="psw"><b>Password</b></label>
                  <input runat="server" id="txtPassword" type="password" placeholder="Enter Password" name="psw" required />

                  <label for="psw-repeat"><b>Repeat Password</b></label>
                  <input runat="server" id="txtConfirm" type="password" placeholder="Repeat Password" name="psw-repeat" required />

                  <label>
                      <input type="checkbox" checked="checked" name="remember" style="margin-bottom: 15px">
                      Remember my  </label>
                  <br />
                
                  <label> <input id ="RestaurantCheckBox" type="checkbox" runat="server" name="remember" style="margin-bottom: 15px"> Check if you want to register as a restaurant </label>
                  <br />
                  <asp:Label ID="ErrorMsg" runat="server" Text="This Email is not avaialabe"></asp:Label>
                  <br />
                  <br />
                  <p>By creating an account you agree to our <a href="#" style="color: dodgerblue">Terms & Privacy Agreement</a>.</p>

                  <div class="clearfix">

                      <button type="button"  class="cancelbtn">Cancel Signup</button>
                      <asp:Button runat="server" Text="Sign Up" OnClick="btnSignUp_Click" ID="btnSignUp" CssClass="signupbtn"></asp:Button>



                  </div>
              </div>
          </form>
          <!--This is the footer, it gives the address and copyright information of the website-->
          <div class="text-center" style="padding-top: 12px; padding-bottom: 12px; background-color: #ED6C06; color: white;">
              &copy; Copyright 2019 ~ ReServe ~
          </div>
      </div>

		</br>
		</div>
    </div>
  </div>
</div>
		</br>
		</br>
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
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

