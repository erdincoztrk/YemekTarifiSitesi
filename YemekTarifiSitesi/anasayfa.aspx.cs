using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class anasayfa : System.Web.UI.Page
{
    dataconnection connection = new dataconnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("select * from yemekler_tablo", connection.baglanti());
        SqlDataReader dr = command.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}