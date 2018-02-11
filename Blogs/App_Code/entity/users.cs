using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// users 的摘要说明
/// </summary>
public class Users
{
    private string user_id;
    private string user_pwd;
    public Users()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public string User_id
    {
        get { return user_id; }
        set { user_id = value; }
    }

    public string User_pwd
    {
        get { return user_pwd; }
        set { user_pwd = value; }
    }
}