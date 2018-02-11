using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// blogs 的摘要说明
/// </summary>
public class Blogs
{
    private int blog_id;
    private string blog_date;
    private string blog_title;
    private string blog_body;
    private int comment_num;
    private string user_id;
    public Blogs()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public int Blog_id
    {
        get { return blog_id; }
        set { blog_id = value; }
    }
    public string Blog_date
    {
        get { return blog_date; }
        set { blog_date = value; }
    }

    public string Blog_title
    {
        get { return blog_title; }
        set { blog_title = value; }
    }
    public string Blog_body
    {
        get { return blog_body; }
        set { blog_body = value; }
    }
    public int Comment_num
    {
        get { return comment_num; }
        set { comment_num = value; }
    }
    public string User_id
    {
        get { return user_id; }
        set { user_id = value; }
    }
}