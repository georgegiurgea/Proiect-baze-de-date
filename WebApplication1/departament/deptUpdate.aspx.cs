using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1.departament
{
    public partial class deptUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        StringBuilder table = new StringBuilder();
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from Departamente";
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' style = 'text-align:center;' border='1'>");
            table.Append("<tr><th> IDDepartament </th> <th> IDCladire </th> <th> NumeDepartament </th> <th> BugetDepartament </th><th> Observatii </th>");
            table.Append("</tr>");
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    table.Append("<tr>");
                    table.Append("<td>" + rd[0] + "</td>");
                    table.Append("<td>" + rd[1] + "</td>");
                    table.Append("<td>" + rd[2] + "</td>");
                    table.Append("<td>" + rd[3] + "</td>");
                    table.Append("<td>" + rd[4] + "</td>");


                    table.Append("</tr>");

                }
            }
            else
            {
                //eroare
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            rd.Close();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Departamente set NumeDepartament='" + txtNume0.Text + "',Observatii='" + txtObs.Text + "',BugetDepartament='" + txtBugetDept.Text + "' where NumeDepartament='" + txtNume.Text + "'";
            cmd.Connection = con;
            int res = cmd.ExecuteNonQuery();

            if (res == 0)
            {
                Response.Write("Eroare");
                con.Close();
            }
            else
            {

                Response.Write("Departament updatat cu succes!");
                con.Close();
                txtNume.Text = "";
                txtObs.Text = "";
                txtBugetDept.Text = "";
                txtNume0.Text = "";

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select NumeDepartament,BugetDepartament,Observatii from Departamente where NumeDepartament='" + txtNume.Text + "'";
            cmd.Connection = con;

            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {



                    txtBugetDept.Text = rd[1].ToString();
                    txtObs.Text = rd[2].ToString();
                    txtNume0.Text = rd[0].ToString();

                }
                con.Close();
                rd.Close();
            }
            else
            {
                Response.Write("Departamentul nu exista in baza de date");
            }
        }
    }
}