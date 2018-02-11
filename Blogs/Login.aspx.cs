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


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string login = Request["username"];
            string password = Request["password"];
            UsersDB db = new UsersDB();
            List<Users> u = new List<Users>();
            if (login != "" && password != "")
            {
                if (db.Check(login).Count>0)
                {
                    u = db.Check(login);
                    string pwd = u[0].User_pwd;
                    if (pwd.Equals(password))
                    {
                        Session["user"] = login.ToString();
                        Response.Redirect("Index.aspx");
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