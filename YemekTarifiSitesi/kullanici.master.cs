using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class kullanici : System.Web.UI.MasterPage
{
    dataconnection connect = new dataconnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from kategori_tablo order by kategori_ad asc", connect.baglanti());
        SqlDataReader read = komut.ExecuteReader();
        DataList1.DataSource = read;
        DataList1.DataBind();
    }
}
