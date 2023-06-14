using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Invoice : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Id = Request.QueryString["BookingID"].ToString();
            String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from BookingTable Where BookingID='" + Id + "'", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {

                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        Repeater1.DataSource = dtBrands;
                        Repeater1.DataBind();
                    }

                }
            }
        }
    }
}