using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class gunun_yemegi : System.Web.UI.Page
{
    dataconnection dc = new dataconnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("Select * From gununyemegi_tablo", dc.baglanti());
        SqlDataReader read = command.ExecuteReader();
        DataList2.DataSource = read;
        DataList2.DataBind();
    }
}