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
/// BlogsDB 的摘要说明
/// </summary>
public class BlogsDB
{
    public BlogsDB()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public void Write(Blogs b)
    {
        Random random = new Random();
        b.Blog_id = random.Next();
        string sql = "insert into [blogs](blog_date,blog_title,blog_body,comment_num,user_id,blog_id) values('" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','"+b.Blog_title+"','"+b.Blog_body+"','0','"+b.User_id+"','"+b.Blog_id+"');";
        CommonDB.ExecuteNonQuery(sql);
    }
    public List<Blogs> Display(string user_id)
    {
        List<Blogs> list = new List<Blogs>();
        string sql = "select * from [blogs] where user_id='" + user_id + "'";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Blogs b = new Blogs();
            b.Blog_id= Convert.ToInt32(dr["blog_id"]);
            b.Blog_date = dr["user_id"].ToString();
            b.Blog_title = dr["blog_title"].ToString();
            b.Blog_body = dr["blog_body"].ToString();
            b.Comment_num= Convert.ToInt32(dr["comment_num"]);
            list.Add(b);
        }
        return list;
    }
    public List<Blogs> Search(string blog_title)
    {
        List<Blogs> list = new List<Blogs>();
        string sql = "select * from [blogs] where blog_title='" + blog_title + "'";
        DataSet ds = CommonDB.ExecuteDataSet(sql);
        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Blogs b = new Blogs();
            b.Blog_id = Convert.ToInt32(dr["blog_id"]);
            b.Blog_date = dr["user_id"].ToString();
            b.Blog_title = dr["blog_title"].ToString();
            b.Blog_body = dr["blog_body"].ToString();
            b.Comment_num = Convert.ToInt32(dr["comment_num"]);
            list.Add(b);
        }
        return list;
    }
    public void Delete(string blog_id)
    {
        string sql = "update [blogs] set comment_num=1 where [blog_id]=" + blog_id;
        CommonDB.ExecuteNonQuery(sql);
    }
}