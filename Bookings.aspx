<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="TourAndTravel2.Bookings" %>

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
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/1.2.0/tailwind.min.css'>

    <link rel="stylesheet" href="./css/bookings.css">
    <link rel="stylesheet" href="./css/bookingCard.css">
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
            <h1>Your Bookings&nbsp;<i class="fas fa-chevron-right"></i></h1>
            <h3>Happiness Is Travelling.</h3>
                        <form id="form1" runat="server">

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
                    cmd1.CommandText = "SELECT * FROM bookings WHERE userid = " + Session["ID"].ToString();
                    connection1.Open();

                    MySqlDataReader reader1 = cmd1.ExecuteReader();

                    if (reader1.Read())
                    {


                        Random random = new Random();
                        bookingId = random.Next();

                        packageNameLabel.Text = reader1["packagename"].ToString();
                        daysLabel.Text = reader1["days"].ToString();
                        totalPriceLabel.Text = reader1["totalprice"].ToString();
                        locationLabel.Text = reader1["location"].ToString();
                        featuresLabel.Text = reader1["Features"].ToString();

                        gst = Convert.ToDouble(reader1["price"].ToString()) * 0.18;
                        other = Convert.ToDouble(reader1["price"].ToString()) * 0.03;

                        gstLabel.Text = gst.ToString();
                        otherLabel.Text = other.ToString();
                        //totalLabel.Text = total.ToString();

                        Label4.Text =  reader1["username"].ToString();
                        Label5.Text =  reader1["phone"].ToString();
                        Label6.Text = reader1["email"].ToString();






                %>

                <div class='container'>
                    <div class='window1'>
                        <img style="margin-left: 0; border-radius: 30px;" src="./images/bookingsAbstract.jpg" />

                        <div style="color: black; font-family: 'Poppins', sans-serif;" class='order-info1'>

                            <div class='order-info-content'>
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
                                                <asp:Label ID="daysLabel" runat="server" Text="Label"></asp:Label>&nbsp;Days
                                                <br>
                                                <span class='thin small'>
                                                    <asp:Label ID="featuresLabel" runat="server" Text="Label"></asp:Label>

                                                    <br>
                                                    <br>
                                                </span>
                                            </td>

                                        </tr>
                                        <tr>
                                        </tr>
                                    </tbody>

                                </table>
                            </div>
                        </div>

                    </div>
                </div>


                <div class='container'>
                    <div class='window2'>
                        <img style="margin-left: 20px; padding-right: 40px; border-radius: 30px; height: 100%; width: 35%" src="./images/date.jpg" />

                        <div style="color: black; font-family: 'Poppins', sans-serif;" class='order-info2'>
                            <div class='order-info-content'>
                                <h2 style="font-weight: 800; font-size: 22px;">Date Selected</h2>

                                <button style="font-size: 40px; font-weight: 700; width: 300px; margin-top: 20px;" class="chooseDate">17 Nov 2021</button>





                            </div>
                        </div>

                    </div>
                </div>


                <div class='container'>
                    <div class='window3'>
                        <img style="margin-left: 40px; padding-right: 40px; border-radius: 30px; height: 100%; width: 35%" src="./images/order.jpg" />

                        <div style="color: black; font-family: 'Poppins', sans-serif;" class='order-info3'>
                            <div class='order-info-content'>
                                <h2 style="font-weight: 800; font-size: 22px;">Total Cost</h2>

                                <div style="margin-top: -20px" class='total'>

                                    <span style='float: left; text-align: left;'>
                                        <div class='thin dense'>GST 18%</div>
                                        <div class='thin dense'>Other Charges</div>
                                        <div class='thin'>Total</div>

                                    </span>
                                    <span style='float: right; text-align: right;'>
                                        <div class='thin dense'>₹
                                            <asp:Label ID="gstLabel" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class='thin dense'>₹
                                            <asp:Label ID="otherLabel" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class='thin'>₹
                                            <asp:Label ID="totalPriceLabel" runat="server" Text="Label"></asp:Label>
                                        </div>

                                    </span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class='container'>
                    <div class='window3'>
                        <img style="margin-left: 40px; padding-right: 40px; border-radius: 30px; height: 100%; width: 35%" src="./images/personal.jpg" />

                        <div style="color: black; font-family: 'Poppins', sans-serif;" class='order-info3'>
                            <div class='order-info-content'>
                                <h2 style="font-weight: 800; font-size: 22px;">Personal Information</h2>

                                <div style="margin-top: -20px" class='total'>

                                    <span style='float: left; text-align: left;'>
                                        <div class='thin dense'>Name</div>
                                        <div class='thin dense'>Phone</div>
                                        <div class='thin dense'>Email</div>

                                    </span>
                                    <span style='float: right; text-align: right;'>
                                        <div class='thin dense'> <asp:Label ID="Label4" runat="server" Text=''></asp:Label></div>
                                        <div class='thin dense'> <asp:Label ID="Label5" runat="server" Text=''></asp:Label></div>
                                        <div class='thin dense'> <asp:Label ID="Label6" runat="server" Text=''></asp:Label></div>

                                    </span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                    <asp:Button ID="CancelButton" runat="server" Text="Cancel Checkout" CssClass="cancelBookingButton" OnClick="CancelButton_Click" />



                <% 
                        connection1.Close();
                    }
                    else
                    { 
                        %>
                     <div class='container'>
                    <div style="height: 540px;" class='window1'>

                        <div style="color: black; font-family: 'Poppins', sans-serif;" class='order-info1'>

                            <div class='order-info-content'>
                                 <h2 style="font-weight: 800; font-size: 22px; margin-top: 150px; ">
                                    <asp:Label ID="emptyLabel" runat="server" Text="Label"></asp:Label></h2><br />
                                <h2 style="font-weight: 800; font-size: 18px; margin-top: -20px; ">There are currently no Bookings!</h2>
                              <img style="height: 50%; width: 100%;" src="./images/emptyBookings.jpg" />

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
