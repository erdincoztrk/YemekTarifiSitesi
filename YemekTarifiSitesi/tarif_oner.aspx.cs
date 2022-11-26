using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class tarif_oner : System.Web.UI.Page
{
    dataconnection connection = new dataconnection();   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnoner_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("insert into tarif_tablo (tarif_ad, tarif_malzeme, tarif_yapilis, tarif_resim, tarif_sahip, tarif_sahip_mail) values (@p1,@p2,@p3,@p4,@p5,@p6)", connection.baglanti());
        command.Parameters.AddWithValue("@p1", txttarifad.Text);
        command.Parameters.AddWithValue("@p2", txtmalzeme.Text);
        command.Parameters.AddWithValue("@p3", txttarif.Text);
        command.Parameters.AddWithValue("@p4", FileUploadPicture.FileName);
        command.Parameters.AddWithValue("@p5", txt_tarifoneren.Text);
        command.Parameters.AddWithValue("@p6", txtmail.Text);
        command.ExecuteNonQuery();
        connection.baglanti().Close();
        Response.Write("TARİFİNİZ ALINMIŞTIR!");
    }
}