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

public partial class Myaccount : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblusername.Text = Session["USERNAME"].ToString();
            lbluser.Text = Session["USEREMAIL"].ToString();

            string sql = "select * from RegistrationTable where Email='" + lbluser.Text + "'";

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

            SqlDataAdapter adpt = new SqlDataAdapter(sql, con.ConnectionString);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            txtFristname.Text = dt.Rows[0]["FirstName"].ToString();
            txtlastName.Text = dt.Rows[0]["LastName"].ToString();
            txtemail.Text = dt.Rows[0]["Email"].ToString();
            txtmobilenumber.Text = dt.Rows[0]["MobileNumber"].ToString();
            txtaddress.Text = dt.Rows[0]["Location"].ToString();
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        con.Open();
        string myquery = null;
        myquery = "update RegistrationTable set FirstName='" + txtFristname.Text + "',LastName='" + txtlastName.Text + "',MobileNumber='" + txtmobilenumber.Text + "',Location='" + txtaddress.Text + "' where Email='" + lbluser.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = myquery;
        cmd.ExecuteNonQuery();
        //Response.Redirect("Myaccount.aspx");
    }
}