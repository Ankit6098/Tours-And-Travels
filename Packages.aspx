<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="TourAndTravel2.WebForm4" %>

<%@ Import Namespace="MySql.Data.MySqlClient" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mountain Travel</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link rel="stylesheet" href="./css/package.css">
    <link rel="stylesheet" href="./css/packageCard.css">
    <link rel="stylesheet" href="./css/HoverPackage.css">
    <style type="text/css">
        .auto-style1 {
            margin-right: 67px;
        }
    </style>
</head>
<body>

    <header>
        <h2><a href="#">Tours and Travel</a></h2>
        <nav>
            <li><a href="#">Tours</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">@<asp:Label ID="userUserLabel" runat="server" Text="Label"></asp:Label></a></li>
        </nav>
    </header>
    <div class="cardFloat">
    </div>
    <section class="hero">

        <div class="hero-content-area">
            <h1>Explore Tour Packages</h1>
            <h3>Happiness Is Travelling.</h3>

            <button style="border-color: transparent; color: white;" runat="server" id="CheckoutButton" class="checkoutButtonHome" title="Checkout" onserverclick="functionCheckout">
                <i class="fas fa-shopping-basket"></i>
            </button>
            <button style="border-color: transparent; color: white;" runat="server" id="BookingButton" class="bookingsButtonHome" title="Bookings" onserverclick="BookingButton_Click">
                <i class="fas fa-plane"></i>
            </button>
            <button style="border-color: transparent; color: white;" runat="server" id="CheckButtonHome" class="checkPackageHome" title="CheckPackages" onserverclick="CheckButtonHome_Click">
                <i class="fas fa-bars"></i>
            </button>
            <button style="border-color: transparent; color: white;" runat="server" id="LogOutButtonHome" class="logoutButtonHome" title="Log Out" onserverclick="LogOutButtonHome_Click">
                <i class="fas fa-sign-out-alt"></i>
            </button>


            <form runat="server" id="form1">
                <asp:DataList ID="DataList1" runat="server" CssClass="row" CellPadding="0" CellSpacing="0" HorizontalAlign="Center" RepeatColumns="3" RepeatDirection="Horizontal" Width="100px">
                    <ItemTemplate>



                        <%-- <%

                MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT * FROM packages";
                connection.Open();

                string temp = " ";
                int userId = 4;
                userLabel.Text = userId.ToString();

                int packageId = 0;

                MySqlDataReader reader = cmd.ExecuteReader();
                while(reader.Read())
                {

                    byte[] imagem = (byte[])(reader["image"]);
                    string image1 = Convert.ToBase64String(imagem);
                    Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", image1);

                    temp = reader["name"].ToString();
                    nameLabel.Text = temp;

                    packageId = Convert.ToInt32(reader["id"].ToString());
                    packageBox.Text = packageId.ToString();




                %>--%>

                        <div style="" class="section over-hide">
                            <div class="container">
                                <div class="row full-height justify-content-center">
                                    <div class="col-12 text-center align-self-center py-5">
                                        <div class="section text-center py-5 py-md-0">
                                            <input class="pricing" type="checkbox" id="pricing" name="pricing" />
                                            <div class="card-3d-wrap mx-auto">
                                                <div class="card-3d-wrapper">
                                                    <div class="card-front">
                                                        <div class="pricing-wrap">
                                                            <h4 class="mb-5">
                                                                <asp:Label ID="nameLabel" runat="server" Text='<%#Eval("name") %>'></asp:Label></h4>
                                                            <h2 style="margin-top: 25px" class="mb-2"><sup>₹</sup><asp:Label ID="priceLabel" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                                                                /
                                                                <asp:Label ID="daysLabel" runat="server" Text='<%#Eval("days") %>'></asp:Label><sup>Days</sup></h2>
                                                            <p class="mb-4">per person</p>
                                                            <p class="mb-1"><i class="uil uil-location-pin-alt size-22"></i></p>
                                                            <p class="mb-4">
                                                                <asp:Label ID="locationLabel" runat="server" Text='<%#Eval("location") %>'></asp:Label>
                                                            </p>


                                                            <div style="z-index: 0" class="img-wrap img-2">
                                                                <asp:Image ID="Image1" ImageUrl='<%# "data:image/gif;base64," + Convert.ToBase64String((byte[])Eval("image")) %>' runat="server" />
                                                            </div>
                                                            <div class="img-wrap img-1">
                                                                <%--<img src="https://assets.codepen.io/1462889/kayak.png" alt="">--%>
                                                            </div>
                                                            <div class="img-wrap img-3">
                                                                <%--<img src="https://assets.codepen.io/1462889/water.png" alt="">--%>
                                                            </div>
                                                            <div class="">
                                                                <asp:Button ID="ChooseButton" runat="server" Text="Choose Date" CssClass="link" OnClick="ChooseButton_Click" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%--<div class="card-back">
									<div class="pricing-wrap">
										<h4 class="mb-5">Camping</h4>
										<h2 class="mb-2"><sup>$</sup>29 / 8<sup>hrs</sup></h2>
										<p class="mb-4">per person</p>
										<p class="mb-1"><i class="uil uil-location-pin-alt size-22"></i></p>
										<p class="mb-4">Tara, Serbia</p>
										<a href="#0" class="link">Choose Date</a>
										<div class="img-wrap img-2">
											<img src="https://assets.codepen.io/1462889/grass.png" alt="">
										</div>
										<div class="img-wrap img-4">
											<img src="https://assets.codepen.io/1462889/camp.png" alt="">
										</div>
										<div class="img-wrap img-5">
											<img src="https://assets.codepen.io/1462889/Ivy.png" alt="">
										</div>
										<div class="img-wrap img-7">
											<img src="https://assets.codepen.io/1462889/IvyRock.png" alt="">
										</div>
			      					</div>
			      				</div>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <%-- <% }
                        connection.Close();
                        %>--%>
                    </ItemTemplate>

                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="server=localhost;user id=root;database=awp;password=root">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                    </SelectParameters>

                </asp:SqlDataSource>






                <main style="margin-top: 200px;" class="page-content">

                    <div class="card">
                        <div class="content">
                            <h2 class="title">Mountain View</h2>
                            <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
                            <button class="btn">View Trips</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="content">
                            <h2 class="title">To The Beach</h2>
                            <p class="copy">Plan your next beach trip with these fabulous destinations</p>
                            <button class="btn">View Trips</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="content">
                            <h2 class="title">Desert Destinations</h2>
                            <p class="copy">It's the desert you've always dreamed of</p>
                            <button class="btn">Book Now</button>
                        </div>
                    </div>
                    <div class="card">
                        <div class="content">
                            <h2 class="title">Explore The Galaxy</h2>
                            <p class="copy">Seriously, straight up, just blast off into outer space today</p>
                            <button class="btn">Book Now</button>
                        </div>
                    </div>
                </main>
        </div>

    </section>



    <%--<section class="packages">
     
    <p>We offer a variety of mountaineering packages. Whether you've climbed Everest or don't even know what a mountain is, we've got the perfect vacation for you.</p>
    <hr>
       <main class="page-content">
  <div class="card">
    <div class="content">
      <h2 class="title">Mountain View</h2>
      <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
      <button class="btn">View Trips</button>
    </div>
  </div>
  <div class="card">
    <div class="content">
      <h2 class="title">To The Beach</h2>
      <p class="copy">Plan your next beach trip with these fabulous destinations</p>
      <button class="btn">View Trips</button>
    </div>
  </div>
  <div class="card">
    <div class="content">
      <h2 class="title">Desert Destinations</h2>
      <p class="copy">It's the desert you've always dreamed of</p>
      <button class="btn">Book Now</button>
    </div>
  </div>
  <div class="card">
    <div class="content">
      <h2 class="title">Explore The Galaxy</h2>
      <p class="copy">Seriously, straight up, just blast off into outer space today</p>
      <button class="btn">Book Now</button>
    </div>
  </div>
</main>

   
    </section>--%>


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

</body>
</html>

