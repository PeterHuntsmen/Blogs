using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ManagerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string login = Request["username"];
            string password = Request["password"];
            AdminDB db = new AdminDB();
            List<Admin> a = new List<Admin>();
            if (login != "" && password != "")
            {
                if (db.Check(login).Count > 0)
                {
                    a = db.Check(login);
                    string pwd = a[0].Admin_pwd;
                    if (pwd.Equals(password))
                    {
                        Session["user"] = login.ToString();
                        Response.Redirect("ManagerIndex.aspx");
                    }
                    else
                    {
                        Response.Write("请确认用户名和密码！");
                    }
                }
            }
            else
            {
                Response.Write("用户名密码不能为空");
            }
        }
        else
        {
            Session.Clear();
        }
    }
}