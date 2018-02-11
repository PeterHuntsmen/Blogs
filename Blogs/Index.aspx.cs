using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string keyword = Request["keyword"];
            BlogsDB db = new BlogsDB();
            List<Blogs> u = new List<Blogs>();
            if (keyword != "")
            {
                if (db.Search(keyword).Count > 0)
                {
                    Session["keyword"] = keyword;
                    Response.Redirect("Result.aspx");
                }
            }
            else
            {
                Response.Write("用户名密码不能为空");
            }
        }
    }
}