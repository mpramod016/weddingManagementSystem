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
public partial class BookingStatusPage : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Text = Session["USERNAME"].ToString();
        lbluser.Text = Session["USEREMAIL"].ToString();
        con = new SqlConnection();
        cmd = new SqlCommand();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        con.Open();

        string myquery = null;

        myquery = "SELECT BookingID,VenueName,EventType,EventPlace,TotalRS,Status FROM BookingTable where CustomerEmailID='" + lbluser.Text + "' ";

        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = myquery;

        SqlDataAdapter da = new SqlDataAdapter(myquery, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}