using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;



namespace TourAndTravel2
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonRegister_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=awp;password=root");
            MySqlCommand cmd = connection.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO userreg(name, address, gender, phone, email, username, password) values('"+ textName.Text + "', '"+ textAddress.Text + "', '"+ gender + "', '"+ textPhone.Text + "', '"+ textEmail.Text + "', '"+ textUserName.Text + "', '"+ textPassword.Text + "')";
            connection.Open();
            cmd.ExecuteNonQuery();
            connection.Close();
            Response.Write("<script> alert ('User is registered successfully!')</script>");
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";

        }
    }
}