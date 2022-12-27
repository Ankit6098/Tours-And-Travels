using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace TourAndTravel2
{
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                emptyLabel.Text = "Hey, " + "" + Session["UserName"].ToString();

            }

        }
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            MySqlConnection connection2 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
            MySqlCommand cmd2 = connection2.CreateCommand();
            cmd2.CommandType = System.Data.CommandType.Text;
            cmd2.CommandText = "DELETE FROM bookings WHERE userid = " + Session["ID"].ToString();
            connection2.Open();
            cmd2.ExecuteNonQuery();
            connection2.Close();

            Response.Redirect("UserHome.aspx");
        }

        protected void functionCheckout(object sender, EventArgs e)
        {


            Response.Redirect("Checkout.aspx");

        }
        protected void BookingButton_Click(object sender, EventArgs e)
        {

            Response.Redirect("Bookings.aspx");

        }
        protected void CheckButtonHome_Click(object sender, EventArgs e)
        {

            Response.Redirect("Packages.aspx");

        }
        protected void LogOutButtonHome_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Session.Remove("UserName");
            Session.Remove("ID");
            Session.Remove("Email");
            Session.Remove("Phone");
            Session.Remove("UniqueName");
            Session.Remove("Password");
            Response.Redirect("Home.aspx");
        }
    }
}