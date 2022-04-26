using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1.usercont
{
    public partial class raportAngUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select NumeDepartament from Departamente", con);
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
            cmd.CommandText = "select ang.Nume,ang.Prenume,ang.Salariu from Angajat ang inner join Departamente dep on dep.IDDepartament = ang.IDDepartament where dep.NumeDepartament = '" + txtNume.Text + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> Nume </th><th> Prenume </th> <th> Salariu </th>");
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
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select DISTINCT Functie from Angajat", con);
            DataSet res = new DataSet();
            sda.Fill(res);
            this.GridView2.DataSource = res;
            GridView2.DataBind();
            GridView2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select a.Nume,a.Prenume,dep.NumeDepartament from Angajat a inner join Departamente dep on a.IDDepartament=Dep.IDDepartament where a.Functie='" + txtFunctie.Text + "'";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1' >");
            table.Append("<tr><th> Nume </th><th> Prenume </th> <th> Nume Departament </th>");
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
                Response.Write("nu s-a gasit functie");
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            rd.Close();
            con.Close();
            if (GridView1.Visible == true)
                GridView1.Visible = false;
        }
    }
}