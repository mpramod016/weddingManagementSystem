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

public partial class LoginPage : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from RegistrationTable where Email='" + txtusername.Text + "' and Password='" + txtpassword.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                Session["USERID"] = dt.Rows[0]["ID"].ToString();
                Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();
                Session["USERNAME"] = dt.Rows[0]["FirstName"].ToString();
                Session["USERMOBILE"] = dt.Rows[0]["MobileNumber"].ToString();
               
                string Utype;
                Utype = dt.Rows[0][8].ToString().Trim();

                if (Utype == "U")
                {
                    Session["USEREMAIL"] = txtusername.Text;
                    Response.Redirect("EventHomePage.aspx");
                }
                if (Utype == "A")
                {
                    Session["USEREMAIL"] = txtusername.Text;
                    Response.Redirect("~/Admin/pages/Dashboard.aspx");
                }


            }
            else
            {
                string script = "alert(\"Invalid Username or Password !\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

            }
        }
    }
}