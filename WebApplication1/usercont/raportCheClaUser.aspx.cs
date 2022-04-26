using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1.usercont
{
    public partial class raportChelClaUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select IDCladire as Numar_Cladire,NumeCladire from Cladiri", con);
            DataSet res = new DataSet();
            sda.Fill(res);
            this.GridView1.DataSource = res;
            GridView1.DataBind();
            GridView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select cl.Denumire,cl.Valoare,cl.Data from Cheltuieli_Cladiri cl where cl.IDCladire in (select IDCladire from Cladiri where IDCladire='" + TextBox1.Text + "') order by cl.Data ASC";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> Denumire </th><th> Valoare </th> <th> Data </th>");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[0] + "</td>");
                    table.Append("<td>" + rd[1] + "</td>");
                    table.Append("<td>" + rd[2] + "</td>");

                    table.Append("</tr>");

                }
            }
            else
            {
                Response.Write("nu s-a gasit departament");
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            rd.Close();
            con.Close();
            if (GridView1.Visible == true)
                GridView1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select NumeCladire,medieChel=(Select avg(Valoare)from Cheltuieli_Cladiri c where c.IDCladire= s.IDCladire) from Cladiri s";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> NumeCladire </th><th> MedieChel </th> ");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[0] + "</td>");
                    table.Append("<td>" + rd[1] + "</td>");

                    table.Append("</tr>");

                }
            }
            else
            {
                Response.Write("eroare");
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
        }
    }
}