using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using MySql.Data.MySqlClient;


namespace TourAndTravel2
{
    public partial class LoginandRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (String.IsNullOrEmpty(textName.Text) || String.IsNullOrEmpty(textAddress.Text) ||
                String.IsNullOrEmpty(textPhone.Text) || String.IsNullOrEmpty(textEmail.Text) ||
                String.IsNullOrEmpty(textUserName.Text) || String.IsNullOrEmpty(textPassword.Text))
            {
                MessageBox.Show("Please Fill all the Details Correctly!");

            }
            else
            {
                if (CheckBox1.Checked)
                {
                    MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                    MySqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = "INSERT INTO userreg(name, address, phone, email, username, password) values('" + textName.Text + "', '" + textAddress.Text + "', '" + textPhone.Text + "', '" + textEmail.Text + "', '" + textUserName.Text + "', '" + textPassword.Text + "')";
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    Response.Write("<script> alert ('User is registered successfully!')</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please agree terms and conditions.');", true);
                }
                

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
          
           
            if (String.IsNullOrEmpty(textUserSign.Text) || String.IsNullOrEmpty(textPassSign.Text))
            {
                MessageBox.Show("Please Enter UserName and Password!");

            }
            else
            {
                MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
                MySqlCommand cmd = connection.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "SELECT * FROM userreg WHERE username = '" + textUserSign.Text + "' AND password = '" + textPassSign.Text + "'";
                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();

                Label userIdLabel = new Label();
                Label userNameLabel = new Label();
                Label emailLabel = new Label();
                Label phoneLabel = new Label();
                Label passwordLabel = new Label();
                Label userUserNameLabel = new Label();

                MySqlCommand cmd2 = connection.CreateCommand();
                cmd2.CommandType = System.Data.CommandType.Text;
                cmd2.CommandText = "SELECT * FROM userreg WHERE username = '" + textUserSign.Text + "' AND password = '" + textPassSign.Text + "'";
                connection.Open();
                cmd2.ExecuteNonQuery();
                MySqlDataReader read = cmd2.ExecuteReader();
                while (read.Read())
                {
                    userIdLabel.Text = read["id"].ToString();
                    userNameLabel.Text = read["name"].ToString();
                    emailLabel.Text = read["email"].ToString();
                    phoneLabel.Text = read["phone"].ToString();
                    passwordLabel.Text = read["password"].ToString();
                    userUserNameLabel.Text = read["username"].ToString();

                }
                connection.Close();

                Session["ID"] = userIdLabel.Text;
                Session["UserName"] = userNameLabel.Text;
                Session["Email"] = emailLabel.Text;
                Session["Phone"] = phoneLabel.Text;
                Session["Password"] = passwordLabel.Text;
                Session["UniqueName"] = userUserNameLabel.Text;
                Response.Redirect("UserHome.aspx");

            }

        }

      
    }
}