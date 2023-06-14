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
public partial class BookingHistoryPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["USERID"] != null)
        {
            Session["USERNAME"].ToString();
            Session["USEREMAIL"].ToString();
            Session["USERID"].ToString();
            if (!IsPostBack)
            {
                BindRoleRptr();
            }
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
    private void BindRoleRptr()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("select * from BookingTable Where UserId='" + Session["USERID"].ToString() + "' order By DateOfPayment desc", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {

                    DataTable dtBrands = new DataTable();
                    sda.Fill(dtBrands);
                    RepeaterRole.DataSource = dtBrands;
                    RepeaterRole.DataBind();
                }

            }
        }
    }
}