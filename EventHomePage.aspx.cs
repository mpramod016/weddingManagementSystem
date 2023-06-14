using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERID"] != null)
        {
            lblusername.Text = Session["USERNAME"].ToString();
            lbluser.Text = Session["USEREMAIL"].ToString();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}