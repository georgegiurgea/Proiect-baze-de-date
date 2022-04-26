using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace WebApplication1.angajat
{
    public partial class updateAngajat : System.Web.UI.Page
    {

        StringBuilder table = new StringBuilder();
        public int apasat = 0;
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

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Server.Transfer("../admin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "update Angajat Set Oras = '" + txtOras.Text + "', IDDepartament = " + txtIDDep.Text + ", Strada = '" + txtStrada.Text + "', Functie = '" + txtFunctie.Text + "', Salariu = " + txtSalariu.Text + ", Email = '" + txtEmail.Text + "' where Nume = '" + txtNume.Text + "'and Prenume = '" + txtPrenume.Text + "'";
            cmd.Connection = con;
            int res = cmd.ExecuteNonQuery();

            if (res == 0)
            {
                Response.Write("Eroare");
                con.Close();
            }
            else
            {

                Response.Write("Angajat updatat cu succes!");
                con.Close();
                txtEmail.Text = "";
                txtFunctie.Text = "";
                txtOras.Text = "";
                txtStrada.Text = "";
                txtSalariu.Text = "";
                txtIDDep.Text = "";
                txtPrenume.Text = "";
                txtNume.Text = "";

            }



        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select Email,Functie,Oras,Strada,Salariu,IDDepartament from Angajat where Nume='" + txtNume.Text + "'and Prenume='" + txtPrenume.Text + "'";
            cmd.Connection = con;
            int axu = 0;
            string ax;
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {

                    this.apasat = 1;
                    txtEmail.Text = rd[0].ToString();
                    txtFunctie.Text = rd[1].ToString();
                    txtOras.Text = rd[2].ToString();
                    txtStrada.Text = rd[3].ToString();
                    txtSalariu.Text = rd[4].ToString();
                    txtIDDep.Text = rd[5].ToString();

                }
                con.Close();
                rd.Close();
            }
            else
            {
                Response.Write("Angajatul nu exista in baza de date");
            }

        }
    }
}