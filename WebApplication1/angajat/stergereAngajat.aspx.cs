using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class stergereAngajat : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT* from Angajat";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
            table.Append("<tr><th> IDAngajat </th> <th> IDDepartament </th> <th> Nume </th> <th> Prenume </th> <th> CNP </th><th> Strada  </th><th> Oras </th><th> GEN </th><th> Data Nasterii </th><th> Functie </th><th> Email </th><th> Salariu </th>");
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
                    table.Append("<td>" + rd[5] + "</td>");
                    table.Append("<td>" + rd[6] + "</td>");
                    table.Append("<td>" + rd[7] + "</td>");
                    table.Append("<td>" + rd[8] + "</td>");
                    table.Append("<td>" + rd[9] + "</td>");
                    table.Append("<td>" + rd[10] + "</td>");
                    table.Append("<td>" + rd[11] + "</td>");

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();


            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete from CheltuieliAngajati where CheltuieliAngajati.IDAngajat=(Select IDAngajat from Angajat where Nume = '" + txtNume.Text + "' and Prenume = '" + txtPrenume.Text + "');Delete from Cladire_angajat where Cladire_angajat.IDAngajat = (Select IDAngajat from Angajat where Nume = '" + txtNume.Text + "' and Prenume = '" + txtPrenume.Text + "');Delete from Angajat where Angajat.IDAngajat=(Select IDAngajat from Angajat where Nume = '" + txtNume.Text + "' and Prenume = '" + txtPrenume.Text + "')";
            cmd.Connection = con;
            //SqlTransaction trans = null;
            //"Delete from Angajat Where Nume='qwert' and Prenume='qwer2'";
            try
            {

                //trans = con.BeginTransaction();
                // SqlCommand comanda = new SqlCommand("Delete from Angajat Where Nume='"+txtNume.Text+"' and Prenume='"+txtPrenume.Text+"'", con);
                //SqlCommand comanda = new SqlCommand("Select IDAngajat from Angajat where Nume = 'nume' and Prenume = 'prenume'");
                // trans.Commit();
                //comanda.Connection = con;

                int res = cmd.ExecuteNonQuery();
                if (res == 0)
                    Response.Write("Eroare");
                else
                    Response.Write("Angajatul " + txtPrenume.Text + " " + txtNume.Text + " a fost sters cu succes");


            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);

            }


        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Server.Transfer("../admin.aspx");
        }
    }
}