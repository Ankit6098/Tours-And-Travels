using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Windows;

namespace TourAndTravel2
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["UniqueName"] != null)
                {
                    userUserLabel.Text = "" + "" + Session["UniqueName"].ToString();
                    
                }

                MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT * FROM packages";
                connection.Open();
                cmd.ExecuteNonQuery();


                connection.Close();

            }
            if (Session["UserName"] != null)
            {
                emptyLabel.Text = "Hey, " + "" + Session["UserName"].ToString();

            }
        }

        protected void CheckoutButton2_Click(object sender, EventArgs e)
        {
            if (dateTextBox.Text.Contains("d") || dateTextBox.Text == null || dateTextBox.Text == "")
            {
                MessageBox.Show("Please Choose Date to Continue!");

            }

            else
            {
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

            MySqlConnection connection4 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
            MySqlCommand cmd4 = connection4.CreateCommand();
            cmd4.CommandType = System.Data.CommandType.Text;
            cmd4.CommandText = "SELECT * FROM checkout WHERE userid = " + Session["ID"].ToString();
            connection4.Open();

            MySqlDataReader reader1 = cmd4.ExecuteReader();

            if (reader1.Read())
            {
                packageId = reader1["packageid"].ToString();
            }
            connection4.Close();

                if (packageId != null)
                {
                    MySqlConnection connection3 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                    MySqlCommand cmd3 = connection3.CreateCommand();
                    cmd3.CommandType = System.Data.CommandType.Text;
                    cmd3.CommandText = "SELECT * FROM packages WHERE id = " + packageId;
                    connection3.Open();
                    MySqlDataReader reader2 = cmd3.ExecuteReader();

                    if (reader2.Read())
                    {
                        Random random = new Random();
                        bookingId = random.Next();

                        packageName = reader2["name"].ToString();
                        packagePrice = reader2["price"].ToString();
                        days = reader2["days"].ToString();
                        location = reader2["location"].ToString();
                        features = reader2["features"].ToString();

                        gst = Convert.ToDouble(reader2["price"].ToString()) * 0.18;
                        other = Convert.ToDouble(reader2["price"].ToString()) * 0.03;
                        total = gst + other + Convert.ToDouble(reader2["price"].ToString());


                    }
                    connection3.Close();

                    MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                    MySqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "INSERT INTO bookings(userid, bookingid, packageid, username, phone, email, date, packagename, days, totalprice, price, paymentmethod, location, features) values('" + Session["ID"].ToString() + "', '" + bookingId.ToString() + "', '" + packageId + "', '" + Session["UserName"].ToString() + "', '" + Session["Phone"].ToString() + "', '" + Session["Email"].ToString() + "', '" + dateTextBox.Text + "', '" + packageName + "', '" + days + "', '" + total + "', '" + packagePrice + "', '" + "Card" + "', '" + location + "', '" + features + "')";
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();

                    MySqlConnection connection2 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                    MySqlCommand cmd2 = connection2.CreateCommand();
                    cmd2.CommandType = System.Data.CommandType.Text;
                    cmd2.CommandText = "DELETE FROM checkout WHERE userid = " + Session["ID"].ToString();
                    connection2.Open();
                    cmd2.ExecuteNonQuery();
                    connection2.Close();

                    Response.Redirect("Bookings.aspx");
                }


            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            MySqlConnection connection2 = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
            MySqlCommand cmd2 = connection2.CreateCommand();
            cmd2.CommandType = System.Data.CommandType.Text;
            cmd2.CommandText = "DELETE FROM checkout WHERE userid = " + Session["ID"].ToString();
            connection2.Open();
            cmd2.ExecuteNonQuery();
            connection2.Close();

            Response.Redirect("Checkout.aspx");
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