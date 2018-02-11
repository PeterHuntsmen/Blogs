using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Configuration;
using System.Data.SqlClient;

/// <summary>
///CommonDB 的摘要说明
/// </summary>
public class CommonDB
{
    public CommonDB()
    {

    }
    private static string ConnectionString
    {
        get
        {
            return @"Data Source=DESKTOP-RNKMG1N;Initial Catalog=Blogs;User ID=sa;Password='sa'";
        }
    }
    public static DataSet ExecuteDataSet(string sql)
    {
        DataSet ds = new DataSet();
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            con.Open();
            sa.Fill(ds);
            con.Close();
        }
        return ds;
    }
    public static void ExecuteNonQuery(string sql)
    {
        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
