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

public partial class WriteBlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string blog_title = Request["blog_title"];
            string blog_body = Request["editor"];
            Blogs b = new Blogs();
            b.Blog_title = blog_title;
            b.Blog_body = blog_body;
            if (Session["user"] != null)
            {
                b.User_id = Session["user"].ToString();
                BlogsDB db = new BlogsDB();
                db.Write(b);
            }
            else
            {
                Response.Write("出错");
            }
        }
    }
}