using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// admin 的摘要说明
/// </summary>
public class Admin
{
    private string admin_id;
    private string admin_pwd;
    public Admin()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public string Admin_id
    {
        get { return admin_id; }
        set { admin_id = value; }
    }

    public string Admin_pwd
    {
        get { return admin_pwd; }
        set { admin_pwd = value; }
    }
}