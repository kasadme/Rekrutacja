using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace WebApplication7
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Wyslij(object sender, EventArgs e)
        {
            
            SqlConnection connection = new SqlConnection("Data Source=LAPTOP-TBQR1IVE;Initial Catalog=RekrutacjaPAB3;Integrated Security=True");
            using (connection)
            {
                
                    connection.Open();
                   
                     string danerodzicow = "INSERT INTO [dbo].[DaneRodzicow]([imie_matki],[imie_ojca],[telefon_matki],[telefon_ojca])VALUES('" + imie_matki.Text + "','" + imie_ojca.Text + "','" + nrtel_matki.Text + "','" + nrtel_ojca.Text + "')";
                     string danetele = "INSERT INTO [dbo].[DaneTeleadresowe]([ulica],[numer_domu],[numer_mieszkania],[numer_telefonu],[email])VALUES('" + adres_ulica.Text + "','" + adres_nrdomu.Text + "','" + adres_nrmieszkania.Text + "','" + nr_telefonu.Text + "','" + email.Text + "')";
                     string kier = "INSERT INTO [dbo].[Kierunek]([kierunek])VALUES('" + kierunek.SelectedValue + "')";
                     string wyborjezyka = "INSERT INTO [dbo].[WyborJezyka]([jezyk])VALUES('" + jezyk.SelectedValue + "')";
                     string podstawowedane = "INSERT INTO [dbo].[PodstawoweDane]([imie],[drugie_imie],[nazwisko])VALUES('" + imie.Text + "','" + drugie_imie.Text + "','" + nazwisko.Text + "')";
                     string punkty = "INSERT INTO [dbo].[Punkty]([polski],[matematyka],[angielski],[niemiecki],[fizyka],[biologia])VALUES('" + polski.Text + "','" + matematyka.Text + "','" + angielski.Text + "','" + niemiecki.Text + "','" + fizyka.Text + "','" + biologia.Text + "')";
                     string sumapunktow = "INSERT INTO [dbo].[SumaPunktow]([suma_punktow])VALUES('" + polski.Text + " + " + matematyka.Text + " + " + angielski.Text + " + " + niemiecki.Text + " + " + fizyka.Text + " + " + biologia.Text + "')";
                     string zgloszenie = "INSERT INTO [dbo].[Zgloszenie]([data_zgloszenia])VALUES('" + DateTime.Now.ToString("yyyy-MM-dd") + "')";

                     using (SqlCommand command = new SqlCommand(danerodzicow, connection))
                     {
                         command.ExecuteNonQuery();
                     }

                     using (SqlCommand command = new SqlCommand(danetele, connection))
                     {
                         command.ExecuteNonQuery();
                     }

                     using (SqlCommand command = new SqlCommand(kier, connection))
                     {
                         command.ExecuteNonQuery();
                     }

                     using (SqlCommand command = new SqlCommand(wyborjezyka, connection))
                     {
                         command.ExecuteNonQuery();
                     }

                     using (SqlCommand command = new SqlCommand(podstawowedane, connection))
                     {
                         command.ExecuteNonQuery();
                         
                     }

                     using (SqlCommand command = new SqlCommand(punkty, connection))
                     {
                         command.ExecuteNonQuery();
                         
                     }                     

                     using (SqlCommand command = new SqlCommand(zgloszenie, connection))
                     {
                         command.ExecuteNonQuery();
                       
                     }                  

                    Label1.Text = "Formularz został wysłany";
                    connection.Close();

            }

           
        }

       
    }
}