using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// dataconnection için özet açıklama
/// </summary>
public class dataconnection
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source =LAPTOP-H333VG89;Initial Catalog=yemektarif_db;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}