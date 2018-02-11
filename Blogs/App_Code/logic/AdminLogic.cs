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
using System.Collections.Generic;
/// <summary>
/// AdminLogic 的摘要说明
/// </summary>
public class AdminLogic
{
    public AdminLogic()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public List<Admin> GetContacts()
    {
        AdminDB db = new AdminDB();
        return db.GetContacts();
    }
    public List<Admin> GetContact(string admin_id)
    {
        AdminDB db = new AdminDB();
        return db.GetContact(admin_id);
    }
    public List<Admin> Check(string admin_id)
    {
        AdminDB db = new AdminDB();
        return db.Check(admin_id);
    }
}