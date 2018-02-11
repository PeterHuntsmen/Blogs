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
using System.Data.SqlClient;
using System.Collections.Generic;
/// <summary>
/// AdminDB 的摘要说明
/// </summary>
public class AdminDB
{
    public AdminDB()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public List<Admin> GetContact(string admin_id)
    {
        List<Admin> list = new List<Admin>();
        string sql = "select * from [admins] where admin_id='" + admin_id + "'";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Admin a = new Admin();
            a.Admin_id = dr["admin_id"].ToString();
            a.Admin_pwd = dr["admin_pwd"].ToString();
            list.Add(a);
        }
        return list;
    }
    public List<Admin> GetContacts()
    {
        List<Admin> list = new List<Admin>();
        string sql = "select * from [admins]";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Admin a = new Admin();
            a.Admin_id = dr["admin_id"].ToString();
            a.Admin_pwd = dr["admin_pwd"].ToString();
            list.Add(a);
        }
        return list;
    }
    public List<Admin> Check(string admin_id)
    {
        List<Admin> list = new List<Admin>();
        string sql = "select admin_pwd from [admins] where admin_id='" + admin_id + "'";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Admin a = new Admin();
            a.Admin_pwd = dr["admin_pwd"].ToString();
            list.Add(a);
        }
        return list;
    }
}