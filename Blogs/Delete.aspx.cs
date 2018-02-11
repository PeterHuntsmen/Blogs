using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string blog_id = Request["blog_id"];
            BlogsDB db = new BlogsDB();
            if (blog_id != "")
            {
                db.Delete(blog_id);
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("blog_id不能为空");
                Response.Redirect("Delete.aspx");
            }
        }
    }
}