using System;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from aspmuser where username = '" + txtUser.Text + "'and password ='" + txtPass.Text + "' and " +
                "usertype ='" + DropDownList1.SelectedItem.ToString() + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('you are logined as " + dt.Rows[0][2] + "')</script>");
                if (DropDownList1.SelectedIndex == 0)
                {
                    Server.Transfer("admin.aspx");

                }
                else if (DropDownList1.SelectedIndex == 1)
                {
                    Server.Transfer("usercont/UserPage.aspx");
                }

            }
            else
            {
                Response.Write("error in your input");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Server.Transfer("inregistrare.aspx");

        }
    }
}