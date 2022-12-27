using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace TourAndTravel2
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    userNameLabel.Text = "Welcome," + "  " + Session["UserName"].ToString();
                }
            }
        }

        protected void packageButton_Click(object sender, EventArgs e)
        {
            //Label userIdLabel = new Label();
            //Label userNameLabel = new Label();
            //Label emailLabel = new Label();
            //Label phoneLabel = new Label();
            //Label passwordLabel = new Label();
            //Label userUserNameLabel = new Label();
            //MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
            //MySqlCommand cmd2 = connection.CreateCommand();
            //cmd2.CommandType = System.Data.CommandType.Text;
            //cmd2.CommandText = "SELECT * FROM userreg WHERE username = '" + textUserSign.Text + "' AND password = '" + textPassSign.Text + "'";
            //connection.Open();
            //cmd2.ExecuteNonQuery();
            //MySqlDataReader read = cmd2.ExecuteReader();
            //while (read.Read())
            //{
            //    userIdLabel.Text = read["id"].ToString();
            //    userNameLabel.Text = read["name"].ToString();
            //    emailLabel.Text = read["email"].ToString();
            //    phoneLabel.Text = read["phone"].ToString();
            //    passwordLabel.Text = read["password"].ToString();
            //    userUserNameLabel.Text = read["username"].ToString();

            //}
            //connection.Close();

            //Session["ID"] = userIdLabel.Text;
            //Session["UserName"] = userNameLabel.Text;
            //Session["Email"] = emailLabel.Text;
            //Session["Phone"] = phoneLabel.Text;
            //Session["Password"] = passwordLabel.Text;
            //Session["UniqueName"] = userUserNameLabel.Text;

            Response.Redirect("Packages.aspx");
        }

        protected void LogOutButton_Click(object sender, EventArgs e)
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