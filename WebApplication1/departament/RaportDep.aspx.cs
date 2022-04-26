using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1.departament
{
    public partial class RaportDep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
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

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = " ";
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select count(ang.IDAngajat) as Numar_Angajati from Angajat ang inner join " +
                "Departamente dep on dep.IDDepartament = ang.IDDepartament where dep.NumeDepartament = '" + txtNume.Text + "'";
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

                    if (!txtNume.Text.Equals(""))
                        Label1.Text = "Departamentul " + txtNume.Text + " are " + rd[0] + " angajati ! ";

                }
            }
            else
            {
                Response.Write("nu s-a gasit departament");
            }


            table.Append("</table>");

            rd.Close();
            con.Close();
            if (GridView1.Visible == true)
                GridView1.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label2.Text = " ";
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select cast (AVG(ang.Salariu) as decimal(10,2) ) as MedieSalariu from Angajat ang inner join Departamente dep on" +
                " dep.IDDepartament = ang.IDDepartament where dep.NumeDepartament = '" + txtNume0.Text + "'";
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

                    if (!txtNume0.Text.Equals(""))
                        Label2.Text = "Departamentul " + txtNume0.Text + " are media salarilor " + rd[0] + " de lei ! ";

                }
            }
            else
            {
                Response.Write("nu s-a gasit departament");
            }


            table.Append("</table>");

            rd.Close();
            con.Close();
            if (GridView1.Visible == true)
                GridView1.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label3.Text = " ";
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select Nume,Prenume from Angajat where (Functie='Director General' or Functie='Ministru') and " +
                "IDDepartament in (select IDDepartament from Departamente where NumeDepartament='" + txtNume1.Text + "')";
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
                    if (!txtNume1.Text.Equals(""))
                        Label3.Text = "Departamentul " + txtNume1.Text + " este condus de " + rd[0] + " " + rd[1] + "  ! ";

                }
            }
            else
            {
                Response.Write("nu s-a gasit departament");
            }


            table.Append("</table>");

            rd.Close();
            con.Close();
        }
    }
}