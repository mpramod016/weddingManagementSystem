using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtfirstname.Text != "" & txtlastname.Text != "" && txtemail.Text != "" && txtphone.Text != "" && txtcity.Text != "" && txtpassword.Text != "" && txtcfnpassword.Text != "")
        {
            if (txtpassword.Text == txtcfnpassword.Text)
            {
                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("insert into RegistrationTable values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtcity.Text + "','" + txtpassword.Text + "','" + txtcfnpassword.Text + "','U')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    string script = "alert(\"Registration Successfull\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),"ServerControlScript", script, true);
                    Response.Redirect("LoginPage.aspx");
                }
            }
            else
            {
                string script = "alert(\"Passwords do not match\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            }
        }
        else
        {
            string script = "alert(\"All Fields Are Mandatory\");";
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

        }
    }
}