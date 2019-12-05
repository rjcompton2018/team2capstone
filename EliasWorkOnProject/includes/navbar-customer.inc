<!-- Navbar -->
    <nav id="rs-main-nav" class="navbar navbar-expand-md navbar-dark fixed-top">

		<!-- Brand = Highlights the the name of the project -->
		<a class="navbar-brand" href="#">
			<img src="images\tea-time-32-292243.png" alt="I'm a little teapot">
		</a>
        <a class="navbar-brand" href="reServe-CustomerMainPage.aspx">ReServe</a>

        <!-- Collapse toggler = Creates hamburger menu for small screens -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!--Navbar Links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
				<!-- Dropdown -->
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
						Reservations
					</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="reServe-MakeReservation.aspx">Make Reservations</a>
						<a class="dropdown-item" href="reServe-ViewReservation.aspx">View Reservations</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="reServe-CustomerAccountInfo.aspx">Account Information</a>
				</li>
			</ul>
		</div>

		<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
            <ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="reServe-Login.aspx">Logout</a>
				</li>
			</ul>
		</div>
    </nav>

	<!-- // Here how you get the ID from the URL when you pass it
				string identification = Request.QueryString["ID"];
				int ID = Convert.ToInt32(identification);

		// This how you pass the ID in the URL when redirecting to other pages
				Response.Redirect("ReServe-Main.aspx?ID=" + ID);
	 -->