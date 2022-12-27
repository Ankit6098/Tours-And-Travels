<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="TourAndTravel2.Checkout" %>

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
    <link rel="stylesheet" href="./css/checkout.css">
    <link rel="stylesheet" href="./css/checkoutCard.css">
    <link rel="stylesheet" href="./css/HoverPackage.css">
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
    <form runat="server" name="form1">


        <section class="hero">
            
            <div class="hero-content-area">
                <h1>Continue Checkout&nbsp;<i class="fas fa-chevron-right"></i></h1>
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
                <%
                    string packageId = "";
                    string packageName = " ";
                    string packagePrice = " ";
                    string days = " ";
                    string location = " ";
                    string features = " ";
                    double gst = 0;
                    double other = 0;
                    double total = 0;
                    int bookingId = 0;

                    MySqlConnection connection1 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                    MySqlCommand cmd1 = connection1.CreateCommand();
                    cmd1.CommandType = System.Data.CommandType.Text;
                    cmd1.CommandText = "SELECT * FROM checkout WHERE userid = " + Session["ID"].ToString();
                    connection1.Open();

                    MySqlDataReader reader1 = cmd1.ExecuteReader();

                    if (reader1.Read())
                    {
                        packageId = reader1["packageid"].ToString();
                    }
                    connection1.Close();

                    if (packageId != null && !packageId.Equals(""))
                    {
                        MySqlConnection connection2 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                        MySqlCommand cmd2 = connection2.CreateCommand();
                        cmd2.CommandType = System.Data.CommandType.Text;
                        cmd2.CommandText = "SELECT * FROM packages WHERE id = " + packageId;
                        connection2.Open();
                        MySqlDataReader reader2 = cmd2.ExecuteReader();

                        if (reader2.Read())
                        {
                            Random random = new Random();  
                            bookingId = random.Next();  

                            packageNameLabel.Text = reader2["name"].ToString();
                            priceLabel.Text = reader2["price"].ToString();
                            daysLabel.Text = reader2["days"].ToString();
                            locationLabel.Text = reader2["location"].ToString();
                            featuresLabel.Text = reader2["Features"].ToString();

                            gst = Convert.ToDouble(priceLabel.Text) * 0.18;
                            other = Convert.ToDouble(priceLabel.Text) * 0.03;
                            total = gst + other + Convert.ToDouble(priceLabel.Text);

                            gstLabel.Text = gst.ToString();
                            otherLabel.Text = other.ToString();
                            totalLabel.Text = total.ToString();

                            packageNameField.Value = reader2["name"].ToString();
                            costField.Value = total.ToString();
                            





                %>


                <div class='container'>
                    <div class='window'>

                        <div style="color: black; font-family: 'Poppins', sans-serif;" class='order-info'>
                            <div class='order-info-content'>
                                <h2 style="font-weight: 800; font-size: 22px; margin-left: -150px;">Order Summary</h2>
                                <table class='order-table'>
                                    <tbody>
                                        <tr>

                                            <td>
                                                <br>
                                                <span class='thin'>
                                                    <asp:Label ID="packageNameLabel" runat="server" Text="Label"></asp:Label>

                                                </span>
                                                <br />
                                                <span class='thin'>
                                                    <asp:Label ID="locationLabel" runat="server" Text="Label"></asp:Label>

                                                </span>
                                                <br>
                                                <asp:Label ID="daysLabel" runat="server" Text="Label"></asp:Label>&nbsp;Days<br>
                                                <span class=' small'><asp:Label ID="featuresLabel" runat="server" Text="Label"></asp:Label><br>
                                                    <br>
                                                </span>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <div class='price'>₹<asp:Label ID="priceLabel" runat="server" Text="Label"></asp:Label></div>
                                            </td>
                                        </tr>
                                    </tbody>

                                </table>
                                <button class='chooseDate'>Select Date</button>

                                <asp:TextBox ID="dateTextBox" runat="server" TextMode="Date"></asp:TextBox>


                                <div class='total'>
                                    <div class='line'></div>

                                    <span style='float: left; text-align: left;'>
                                        <div class='thin dense'>GST 18%</div>
                                        <div class='thin dense'>Other Charges</div>
                                        <div class='thin'>Total</div>

                                    </span>
                                    <span style='float: right; text-align: right;'>
                                        <div class='thin dense'>₹<asp:Label ID="gstLabel" runat="server" Text="Label"></asp:Label></div>
                                        <div class='thin dense'>₹<asp:Label ID="otherLabel" runat="server" Text="Label"></asp:Label></div>
                                        <div class='thin'>₹<asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label></div>

                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class='credit-info'>
                            <div class='credit-info-content'>
                                <table class='half-input-table'>
                                    <tr>
                                        <td>Please select your card: </td>
                                        <td>
                                            <div class='dropdown' id='card-dropdown'>
                                                <div class='dropdown-btn' id='current-card'>Visa</div>
                                                <div class='dropdown-select'>
                                                    <ul>
                                                        <li>Master Card</li>
                                                        <li>American Express</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                                <img src='https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png' height='80' class='credit-card-image' id='credit-card-image'></img>
                                Card Number
            <input class='input-field'></input>
                                Card Holder
            <input class='input-field'></input>
                                <table class='half-input-table'>
                                    <tr>
                                        <td>Expires
                  <input class='input-field'></input>
                                        </td>
                                        <td>CVC
                  <input class='input-field'></input>
                                        </td>
                                    </tr>
                                </table>
                                <asp:HiddenField ID="bookingField" runat="server" />
                                <asp:HiddenField ID="packageIdField" runat="server" />
                                <asp:HiddenField ID="packageNameField" runat="server" />
                                <asp:HiddenField ID="costField" runat="server" />
                                <asp:Button ID="CheckoutButton2" runat="server" Text="Checkout" CssClass="pay-btn" OnClick="CheckoutButton2_Click" />
                                
<%--                                <button class='pay-btn'>Checkout</button>--%>

                            </div>

                        </div>
                    </div>
                </div>

                    <asp:Button ID="CancelButton" runat="server" Text="Cancel Checkout" CssClass="cancelButton" OnClick="CancelButton_Click" />

<%--                <button style="" class="cancelButton">Cancel Checkout <i class="far fa-trash-alt"></i></button>--%>
                <% }
                        connection2.Close();
                    }
                    else
                    {
                        %>
                  <div class='container'>
                    <div style="" class='window'>

                        <div style="color: black; font-family: 'Poppins', sans-serif; width: 100%;" class='order-info'>
                            <div class='order-info-content'>
                                <h2 style="font-weight: 800; font-size: 22px; margin-top: 150px; "><asp:Label ID="emptyLabel" runat="server" Text="Label"></asp:Label></h2><br />
                                <h2 style="font-weight: 800; font-size: 18px; margin-top: -20px; ">Your Cart is Empty!</h2>
                              <img style="height: 50%; width: 100%;" src="./images/empty.jpg" />



                                
                            </div>
                        </div>
                 
                    </div>
                </div>
                <%

                    }
                %>
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

    <script src="./js/checkoutCard.js"></script>


</body>
</html>


