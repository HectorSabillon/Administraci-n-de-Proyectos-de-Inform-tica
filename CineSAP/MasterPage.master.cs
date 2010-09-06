using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Scripts_MasterPage : System.Web.UI.MasterPage
{
    public Facebook.Rest.Api api;
    private Facebook.Session.ConnectSession connectSession;
    protected void Page_Load(object sender, EventArgs e)
    {
        connectSession = new Facebook.Session.ConnectSession(ConfigurationManager.AppSettings["ApiKey"], ConfigurationManager.AppSettings["Secret"]);
        if (!connectSession.IsConnected())
        {
        }
        else
        {
            api = new Facebook.Rest.Api(connectSession);
            Facebook.Schema.user u = api.Users.GetInfo();
        }
    }

}
