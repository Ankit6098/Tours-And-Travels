<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginandRegistration.aspx.cs" Inherits="TourAndTravel2.LoginandRegistration" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	  <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css'>
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	  <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">

  <link rel="stylesheet" href="./css/LoginReg.css">

</head>
<body>
	

    <form id="form1" runat="server">
        <h1>Login & registration Form</h1>  
<div class="content">
	<div class="container">
		<img class="bg-img" src="https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg" alt="">
			<div class="menu">
				<a href="#connexion" class="btn-connexion"><h2>SIGN IN</h2></a>
				<a href="#enregistrer" class="btn-enregistrer active"><h2>SIGN UP</h2></a>
			</div>
			<div class="connexion">
				<div class="contact-form">
					<label>USERNAME</label>
					<asp:TextBox ID="textUserSign" runat="server"></asp:TextBox>

					<label>PASSWORD</label>
					<asp:TextBox ID="textPassSign" runat="server" TextMode="Password"></asp:TextBox>
					<div class="check">
						<label>				
							<input id="check" type="checkbox" class="checkbox">
								<svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
									<path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
									<path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
								</svg>
						</label>
						<h3>Keep me signed in</h3>
					</div>
				</div>
									<asp:Button ID="Button2" runat="server" Text="Sign In" BackColor="#3333FF" ForeColor="White" OnClick="Button2_Click" />

				
				<hr>
				<a href="https://www.grandvincent-marion.fr/" target="_blank"><h4>Forgot password?</h4></a>
			</div>
			
			<div class="enregistrer active-section">
				<div style="margin-top: -65px;" class="contact-form">
					<label>Full Name</label>
                        <asp:TextBox ID="textName" placeholder="Enter your Full Name" runat="server"></asp:TextBox>
				<label>Address</label>
                        <asp:TextBox ID="textAddress" placeholder="Enter your Address" runat="server"></asp:TextBox>	

					<label>Phone Number</label>
                        <asp:TextBox ID="textPhone" placeholder="+91-" runat="server" TextMode="Phone"></asp:TextBox>

					<label>Email</label>
                        <asp:TextBox ID="textEmail" placeholder="example@example.com" runat="server" TextMode="Email"></asp:TextBox>

					<label>UserName</label>
                        <asp:TextBox ID="textUserName" placeholder="@username" runat="server"></asp:TextBox>
					
					<label>Password</label>
                        <asp:TextBox ID="textPassword" placeholder="+91-" runat="server" TextMode="Password"></asp:TextBox>
									
					
					<div class="check">
						<label>				
							<input id="check" type="checkbox" class="checkbox">
								<svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
									<path class="path-back"  d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
									<path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6"/>
								</svg>
						</label>
						<h3>I agree</h3>
					</div>
					<asp:Button ID="Button1" runat="server" Text="Sign Up" BackColor="#3333FF" ForeColor="White" OnClick="Button1_Click"  />

				</div>

			</div>

	</div>

</div>

    </form>
	  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
	    <script  src="./js/Login.js"></script>

</body>
</html>
--%>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mountain Travel</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/LoginReg.css">
</head>
<body>


    <header>
        <h2><a href="#">Mountain Travel</a></h2>
        <nav>
            <li><a href="#">Tours</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">@<asp:Label ID="userUserLabel" runat="server" Text="Label"></asp:Label></a></li>

        </nav>
    </header>

    <form runat="server" name="form1">


        <section class="hero">

            <div class="hero-content-area">


                <div class="content">
                    <div class="container">
                        <img class="bg-img" src="https://mariongrandvincent.github.io/HTML-Personal-website/img-codePen/bg.jpg" alt="">
                        <div class="menu">
                            <a href="#connexion" class="btn-connexion">
                                <h2>SIGN IN</h2>
                            </a>
                            <a href="#enregistrer" class="btn-enregistrer active">
                                <h2>SIGN UP</h2>
                            </a>
                        </div>
                        <div class="connexion">
                            <div class="contact-form">
                                <label>USERNAME</label>
                                <asp:TextBox ID="textUserSign" runat="server"></asp:TextBox>

                                <label>PASSWORD</label>
                                <asp:TextBox ID="textPassSign" runat="server" TextMode="Password"></asp:TextBox>
                                <div class="check">
                                    <label>
                                        <input id="check" type="checkbox" class="checkbox">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                                            <path class="path-back" d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6" />
                                            <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6" />
                                        </svg>
                                    </label>
                                    <h3>Keep me signed in</h3>
                                </div>
                            </div>
                            <asp:Button ID="Button2" runat="server" Text="Sign In" BackColor="#3333FF" ForeColor="White" OnClick="Button2_Click" CssClass="submit" />


                            <hr>
                            <a href="https://www.grandvincent-marion.fr/" target="_blank">
                                <h4>Forgot password?</h4>
                            </a>
                        </div>

                        <div class="enregistrer active-section">
                            <div style="margin-top: -65px;" class="contact-form">
                                <label>Full Name</label>
                                <asp:TextBox ID="textName" placeholder="Enter your Full Name" runat="server"></asp:TextBox>
                                <label>Address</label>
                                <asp:TextBox ID="textAddress" placeholder="Enter your Address" runat="server"></asp:TextBox>

                                <label>Phone Number</label>
                                <asp:TextBox ID="textPhone" placeholder="+91-" runat="server" TextMode="Number"></asp:TextBox>

                                <label>Email</label>
                                <asp:TextBox ID="textEmail" placeholder="example@example.com" runat="server" TextMode="Email"></asp:TextBox>

                                <label>UserName</label>
                                <asp:TextBox ID="textUserName" placeholder="@username" runat="server"></asp:TextBox>

                                <label>Password</label>
                                <asp:TextBox ID="textPassword" placeholder="Enter your Password" runat="server" TextMode="Password"></asp:TextBox>


                                <div class="check">
                                    <label>
                                        <%--                                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="checkbox" />--%>
                                        <input id="CheckBox1" type="checkbox" class="checkbox" runat="server">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="26px" height="23px">
                                            <path class="path-back" d="M1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6" />
                                            <path class="path-moving" d="M24.192,3.813L11.818,16.188L1.5,6.021V2.451C1.5,2.009,1.646,1.5,2.3,1.5h18.4c0.442,0,0.8,0.358,0.8,0.801v18.398c0,0.442-0.357,0.801-0.8,0.801H2.3c-0.442,0-0.8-0.358-0.8-0.801V6" />
                                        </svg>
                                    </label>
                                    <h3>I agree to the Terms & Conditions.</h3>
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Sign Up" BackColor="#3333FF" ForeColor="White" OnClick="Button1_Click" CssClass="submit" />

                            </div>

                        </div>

                    </div>

                </div>

            </div>






        </section>






        <section style="background-color: transparent;" class="contact">
            <h3 class="title">Learn more</h3>
            <p>Want to know about our upcoming mountain-related events, or come to one of our mixers? Just sign up for our mailing list. No spam from us, we promise! Except for the spam we give you to keep up your energy while you're hiking through the mountains. We have tons of that.</p>
            <hr>
            <form action="">
                <input type="text" placeholder="Email">
                <a href="#" class="btn">Subscribe now!</a>
            </form>
        </section>

        <footer>
            <p>All Rights <a href="http://unsplash.com/">Reserved. 2021</a></p>
            <p>Proudly Developed By Manish Sable, Ankit Vishwakarma, Sanambir Singh.</p>
            <ul>
                <li><a href="#"><i class="fab fa-twitter-square fa-2x"></i></a></li>
                <li><a href="#"><i class="fab fa-snapchat-square fa-2x"></i></a></li>
                <li><a href="#"><i class="fab fa-facebook-square fa-2x"></i></a></li>
            </ul>
        </footer>
    </form>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
    <script src="./js/Login.js"></script>

</body>
</html>
