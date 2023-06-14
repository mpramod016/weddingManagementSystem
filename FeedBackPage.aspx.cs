using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class FeedBackPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            lblusername.Text = Session["USERNAME"].ToString();
            lbluser.Text = Session["USEREMAIL"].ToString();
        }
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        if (txtmessage.Text != "")
        {
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert into FeedbackTable values('" + lbluser.Text + "','" + txtmessage.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                string script = "alert(\"Successfully Sent to Admin\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                txtmessage.Text = "";
            }
        }
        else
        {
            string script = "alert(\"Enter Your Feedback\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

        }
    }
}