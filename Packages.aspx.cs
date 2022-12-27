using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;



namespace TourAndTravel2
{
    public partial class WebForm4 : System.Web.UI.Page
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
                MySqlDataAdapter sda = new MySqlDataAdapter();
                sda.SelectCommand = cmd;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();

                connection.Close();

            }


        }
      
    
        protected void ChooseButton_Click(object sender, EventArgs e)
        {
            
                MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
            connection.Open();

            MySqlCommand cmd1 = connection.CreateCommand();
                cmd1.CommandType = System.Data.CommandType.Text;

            //Label label = new Label();
            //foreach (DataListItem item in DataList1.Items)
            //{
            //    label = item.FindControl("nameLabel") as Label;
            //}
            Button b = (Button)sender;
            DataListItem row = (DataListItem)b.NamingContainer;
            Label label = (Label)DataList1.Items[row.ItemIndex].FindControl("nameLabel");
            Label packageIdLabel = new Label();

            MySqlCommand cmd2 = connection.CreateCommand();
            cmd2.CommandType = System.Data.CommandType.Text;
            cmd2.CommandText = "SELECT * FROM packages WHERE name = '" + label.Text +  "'";
            cmd2.ExecuteNonQuery();

            MySqlDataReader read = cmd2.ExecuteReader();
            while(read.Read())
            {
                packageIdLabel.Text = read["id"].ToString();

            }
            connection.Close();





            cmd1.CommandText = "INSERT INTO checkout(userid, packageid, packagename) values('" + Session["ID"].ToString() + "', '" + packageIdLabel.Text + "', '" + label.Text + "')";
            connection.Open();

            cmd1.ExecuteNonQuery();

                connection.Close();
                Response.Redirect("checkout.aspx");
            

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