using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class yemek_detay : System.Web.UI.Page
{
    dataconnection connection = new dataconnection();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemek_id"];

        SqlCommand command = new SqlCommand("select yemek_ad from yemekler_tablo where yemek_id=@p1", connection.baglanti());
        command.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = command.ExecuteReader();
        while(dr.Read())
        {
          Label3.Text = dr[0].ToString();
        }
        connection.baglanti().Close();

        SqlCommand command2 = new SqlCommand("Select * From yorum_tablo where yemek_id=@p2", connection.baglanti());
        command2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = command2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
        connection.baglanti().Close();
       
    }

  
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        
            SqlCommand command1_1 = new SqlCommand("insert into yorum_tablo (yorum_adsoyad, yorum_mail, yorum_icerik, yemek_id) values (@q1, @q2, @q3, @q4)", connection.baglanti());
            command1_1.Parameters.AddWithValue("@q4", yemekid);
            command1_1.Parameters.AddWithValue("@q1", txtAd.Text);
            command1_1.Parameters.AddWithValue("@q2", txtMail.Text);
            command1_1.Parameters.AddWithValue("@q3", txtIcerik.Text);
            command1_1.ExecuteNonQuery();
            connection.baglanti().Close();
            Response.Write("YORUM YAPILDI");
        



    }
}