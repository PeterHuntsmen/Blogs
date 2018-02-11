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
using System.Collections.Generic;
/// <summary>
/// UsersLogic 的摘要说明
/// </summary>
public class UsersLogic
{
    public UsersLogic()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public List<Users> GetContacts()
    {
        UsersDB db = new UsersDB();
        return db.GetContacts();
    }
    public List<Users> GetContact(string user_id)
    {
        UsersDB db = new UsersDB();
        return db.GetContact(user_id);
    }
    public void Save(Users u)
    {
        if (u != null)
        {
            UsersDB db = new UsersDB();
            db.Save(u);
        }
    }
    public void Delete(Users u)
    {
        if (u != null)
        {
            UsersDB db = new UsersDB();
            db.Delete(u);
        }
    }
    public void Modify(Users u)
    {
        if (u != null)
        {
            UsersDB db = new UsersDB();
            db.Modify(u);
        }
    }
    public List<Users> Check(string user_id)
    {
        UsersDB db = new UsersDB();
        return db.Check(user_id);
    } 
}