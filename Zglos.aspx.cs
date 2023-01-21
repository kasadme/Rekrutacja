using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Wyslij_zgloszenie(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection("Data Source=LAPTOP-TBQR1IVE;Initial Catalog=RekrutacjaPAB3;Integrated Security=True");
                using (connection)
                {

                    connection.Open();

                    string zgloszenie = "INSERT INTO [dbo].[Zgloszenie_bledu]([email],[tresc])VALUES('" + zgloszenie_email.Text + "','" + zgloszenie_tresc.Text + "')";

                    using (SqlCommand command = new SqlCommand(zgloszenie, connection))
                    {
                        command.ExecuteNonQuery();
                    }

                    poprawne.Text = "Zgłoszenie zostało wysłane";
                    connection.Close();
                }
            }
            catch
            {
                poprawne.Text = "Wystąpił błąd";
            }

            zgloszenie_tresc.Text = string.Empty;
            zgloszenie_email.Text = string.Empty;
        }
    }
}