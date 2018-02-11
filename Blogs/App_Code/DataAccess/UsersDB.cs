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
/// UsersDB 的摘要说明
/// </summary>
public class UsersDB
{
    public UsersDB()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public List<Users> GetContact(string user_id)
    {
        List<Users> list = new List<Users>();
        string sql = "select * from [users] where user_id='" + user_id + "'";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Users u = new Users();
            u.User_id = dr["user_id"].ToString();
            u.User_pwd = dr["user_pwd"].ToString();
            list.Add(u);
        }
        return list;
    }
    public List<Users> GetContacts()
    {
        List<Users> list = new List<Users>();
        string sql = "select * from [users]";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Users u = new Users();
            u.User_id = dr["user_id"].ToString();
            u.User_pwd = dr["user_pwd"].ToString();
            list.Add(u);
        }
        return list;
    }
    public void Save(Users u)
    {
        string sql = "insert into [users] values('" + u.User_id + "','" + u.User_pwd + "');";
        CommonDB.ExecuteNonQuery(sql);
    }
    public void Delete(Users u)
    {
        string sql = "delete from [users] where user_id=" + u.User_id+ ";";
        CommonDB.ExecuteNonQuery(sql);
    }
    public void Modify(Users u)
    {
        string sql = "update [users] set user_pwd='" + u.User_pwd + "' where [user_id]=" + u.User_pwd;
        CommonDB.ExecuteNonQuery(sql);
    }
    public List<Users> Check(string user_id)
    {
        List<Users> list = new List<Users>();
        string sql = "select user_pwd from [users] where user_id='"+user_id+"'";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Users u = new Users();
            u.User_pwd = dr["user_pwd"].ToString();
            list.Add(u);
        }
        return list;
    }
}