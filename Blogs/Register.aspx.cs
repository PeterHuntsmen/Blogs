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

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string login = Request["username"];
            string password = Request["password"];
            string password_con = Request["password_confirm"];
            UsersDB db = new UsersDB();
            if (password.Equals(password_con))
            {
                if (db.GetContact(login).Count==0)
                {
                    Users u = new Users();
                    u.User_id = login;
                    u.User_pwd = password;
                    db.Save(u);
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("用户名已被占用");
                }
            }
            else
            {
                Response.Write("两次输入密码不一致！");
            }
       
        }
        else
        {
            Session.Clear();
        }
    }
}