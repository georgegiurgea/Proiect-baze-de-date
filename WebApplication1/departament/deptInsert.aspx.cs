using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;


namespace WebApplication1.departament
{
    public partial class deptInsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        StringBuilder table = new StringBuilder();
        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder table = new StringBuilder();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select * from Departamente";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            table.Append("<table class='GeneratedTable' border='1'>");
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=DESKTOP-T4EUBD8\\SQLEXPRESS;Initial Catalog=Fonduri_minister;Integrated Security=True";
            SqlCommand cmd = new SqlCommand("insert into Departamente(IDDepartament,IDCladire,NumeDepartament,BugetDepartament,Observatii) values (@IDDep,@IDCl,@NumeDep,@BugetDep,@ObS)", con);

            string test = "";


            cmd.Parameters.AddWithValue(@"IDDep", txtIDDep.Text);
            cmd.Parameters.AddWithValue(@"IDCl", txtCladire.Text);
            cmd.Parameters.AddWithValue(@"NumeDep", txtNume.Text);
            cmd.Parameters.AddWithValue(@"BugetDep", txtBugetDept.Text);
            cmd.Parameters.AddWithValue(@"Obs", txtObs.Text);

            con.Open();

            int a = cmd.ExecuteNonQuery();
            if (a == 0)
                Response.Write("Eroare");
            else
                Response.Write("Departement introdus cu succes !");
            con.Close();


            txtIDDep.Text = "";
            txtCladire.Text = "";
            txtNume.Text = "";
            txtBugetDept.Text = "";
            txtObs.Text = "";
        }
    }
}