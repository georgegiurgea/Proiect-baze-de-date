using System;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class inregistrare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("sp_Insert", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@usertype", "user");
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);


            try
            {
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script> alert('Registered Sucessfully'); </script>");
                    Server.Transfer("usercont/UserPage.aspx");
                }
            }
            catch (SqlException sx)
            {

                //ModelState.AddModelError("UserName", "That user already exists.");
                // Response.Write("<script> alert('Registered Sucessfully'); </script>");
                Label1.Text = "Username exista deja ,introduceti alt nume ";



            }

        }
    }
}