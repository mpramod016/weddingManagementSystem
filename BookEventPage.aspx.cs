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
using System.Globalization;
using paytm;
public partial class BookEventPage : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;

    DataTable dt = new DataTable();
    SqlDataReader rdr = null;
    DataTable dtable = new DataTable();
    SqlConnection con = null;
    SqlCommand cmd = null;
    int sum;
    string date1 = DateTime.Today.ToString();
    SqlCommand com;
    string str;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindEventName();
            bindDecoration();
            bindEntertainment();
            bindHotel();
            bindLocation();
            bindPhotoshoot();
            bindVideoShoot();
            auto();

        }
    }

    protected void CustDateValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        DateTime dt;
        args.IsValid = (DateTime.TryParse(args.Value, out dt) && dt > DateTime.Today);
    }

    private void auto()
    {
        int Num = 0;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);
        con.Open();
        string sql = "SELECT MAX(ID+1) FROM BookingTable";
        cmd = new SqlCommand(sql);
        cmd.Connection = con;
        if (Convert.IsDBNull(cmd.ExecuteScalar()))
        {
            Num = 1;
            lblBookid.Text = Convert.ToString(Num);
            txtBookID.Text = Convert.ToString("B" + Num);
        }
        else
        {
            Num = (int)(cmd.ExecuteScalar());

            lblBookid.Text = Convert.ToString(Num);
            txtBookID.Text = Convert.ToString("B" + Num);
        }
        cmd.Dispose();
        con.Close();
        con.Dispose();

    }
    private void bindEventName()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM VenueTable Order By VID asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                ddlVenueName.DataSource = dt;
                ddlVenueName.DataTextField = "VenueName";
                ddlVenueName.DataValueField = "VenueName";
                ddlVenueName.DataBind();
                ddlVenueName.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }

    private void bindDecoration()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM DecorationTable Order By ID asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                DropDownList1Decoration.DataSource = dt;
                DropDownList1Decoration.DataTextField = "DecorationName";
                DropDownList1Decoration.DataValueField = "DecorationName";
                DropDownList1Decoration.DataBind();
                DropDownList1Decoration.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }

    private void bindEntertainment()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM EntertainmentTable Order By Id asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                DropDownList2Entertainment.DataSource = dt;
                DropDownList2Entertainment.DataTextField = "EntertainmentName";
                DropDownList2Entertainment.DataValueField = "EntertainmentName";
                DropDownList2Entertainment.DataBind();
                DropDownList2Entertainment.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }

    private void bindHotel()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM HotelTable Order By Id asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                DropDownList3Hotel.DataSource = dt;
                DropDownList3Hotel.DataTextField = "HotelName";
                DropDownList3Hotel.DataValueField = "HotelName";
                DropDownList3Hotel.DataBind();
                DropDownList3Hotel.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }

    private void bindLocation()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM LocationTable Order By Id asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                DropDownList4Location.DataSource = dt;
                DropDownList4Location.DataTextField = "LocationName";
                DropDownList4Location.DataValueField = "LocationName";
                DropDownList4Location.DataBind();
                DropDownList4Location.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }

    private void bindPhotoshoot()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM PhotoshootTable Order By Id asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                DropDownList5Photoshoot.DataSource = dt;
                DropDownList5Photoshoot.DataTextField = "PhotoshootName";
                DropDownList5Photoshoot.DataValueField = "PhotoshootName";
                DropDownList5Photoshoot.DataBind();
                DropDownList5Photoshoot.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }

    private void bindVideoShoot()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM VideoShootTable Order By Id asc", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                DropDownList6VideoShoot.DataSource = dt;
                DropDownList6VideoShoot.DataTextField = "VideoShootName";
                DropDownList6VideoShoot.DataValueField = "VideoShootName";
                DropDownList6VideoShoot.DataBind();
                DropDownList6VideoShoot.Items.Insert(0, new ListItem("-", "-"));
            }
        }
    }
    protected void ddlVenueName_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from VenueTable where VenueName ='" + ddlVenueName.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            txtRS.Text = (rdr.GetInt32(6).ToString());
            lblCapcity.Text = (rdr.GetInt32(4).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

     protected void Button1_Click1(object sender, EventArgs e)
    {
        LblTotal.Text = sum.ToString();
        Total.Text = Convert.ToString(Convert.ToInt32(TextBox1Decoration.Text) + Convert.ToInt32(txtRS.Text) + Convert.ToInt32(TextBox2Entertainment.Text) + Convert.ToInt32(TextBox3Hotel.Text) + Convert.ToInt32(TextBox4Location.Text) + Convert.ToInt32(TextBox5Photoshoot.Text) + Convert.ToInt32(TextBox6VideoShoot.Text));
        Advance();
        lblBalance.Text = Convert.ToString(Convert.ToInt32(Total.Text) - Convert.ToInt32(txtAdvance.Text));
     }

     private void Advance()
     {
         int b;
         bool isBValid = int.TryParse(Total.Text, out b);
         txtAdvance.Text = ((b) * 30 / 100).ToString();
     }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (DateTime.Parse(txtdate.Text) >= DateTime.Parse(date1))
        {
            if (Session["USERID"] != null)
            {
                string USERID = Session["USERID"].ToString();
                string PaymentType = "Paytm";
                string PaymentStatus = "Paid";
                string EMAILID = Session["USEREMAIL"].ToString();

                //Insert Data to tblPurchase
                String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                        SqlConnection con1 = new SqlConnection(CS);
                        con1.Open();
                        str = "SELECT * FROM BookingTable WHERE VenueName='"+ ddlVenueName.SelectedItem.Text +"' AND WeddingDate='"+ txtdate.Text +"'";
                        com = new SqlCommand(str, con1);
                        int count = Convert.ToInt32(com.ExecuteScalar());
                        if (count > 0)
                        {
                            string message = "On That Date The Lawns Is Not available Sorry";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                            return;
                        }
                        else
                        {
                            SqlCommand cmd = new SqlCommand("insert into BookingTable   values('" + txtBookID.Text + "','" + ddlVenueName.Text + "','" + txtRS.Text + "','" + DropDownList1Decoration.Text + "','" + TextBox1Decoration.Text + "','" + DropDownList2Entertainment.Text + "','" + TextBox2Entertainment.Text + "','" + DropDownList3Hotel.Text + "','" + TextBox3Hotel.Text + "','" + DropDownList4Location.Text + "','" + TextBox4Location.Text + "','" + DropDownList5Photoshoot.Text + "','" + TextBox5Photoshoot.Text + "','" + DropDownList6VideoShoot.Text + "','" + TextBox6VideoShoot.Text + "','" + txtdate.Text + "','" + txtMember.Text + "','" + Total.Text + "','" + txtAdvance.Text + "','" + PaymentType + "','" + PaymentStatus + "',getdate(),'" + USERID + "','" + Session["USEREMAIL"].ToString() + "','" + Session["USERMOBILE"].ToString() + "','" + ddlPrefered.SelectedItem.Text + "','" + lblBalance.Text + "')", con);
                            con.Open();
                            cmd.ExecuteScalar();
                            string CallbackURL = "http://localhost:49709/Success.aspx";
                            PaytmPayment(Session["USEREMAIL"].ToString(), Session["USEREMAIL"].ToString(), USERID, txtBookID.Text, txtAdvance.Text, CallbackURL);
                        }
                }
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Enter valid date in the future" + "');", true);
        }
    }
    public void PaytmPayment(string EMAIL, string MOBILE_NO, string CUST_ID, string ORDER_ID, string TXN_AMOUNT, string CALLBACK_URL)
    {
        String merchantKey = "OveMdySwAFJv8bfP";
        Dictionary<string, string> parameters = new Dictionary<string, string>();
        parameters.Add("MID", "KPWukm91975396924774");
        parameters.Add("CHANNEL_ID", "WEB");
        parameters.Add("INDUSTRY_TYPE_ID", "Retail");
        parameters.Add("WEBSITE", "WEBSTAGING");
        parameters.Add("EMAIL", EMAIL);
        parameters.Add("MOBILE_NO", MOBILE_NO);
        parameters.Add("CUST_ID", CUST_ID);
        parameters.Add("ORDER_ID", ORDER_ID);
        parameters.Add("TXN_AMOUNT", TXN_AMOUNT);
        parameters.Add("CALLBACK_URL", CALLBACK_URL); //This parameter is not mandatory. Use this to pass the callback url dynamically.

        string checksum = CheckSum.generateCheckSum(merchantKey, parameters);

        string paytmURL = "https://securegw-stage.paytm.in/order/process?orderid=" + ORDER_ID;

        string outputHTML = "<html>";
        outputHTML += "<head>";
        outputHTML += "<title>Merchant Check Out Page</title>";
        outputHTML += "</head>";
        outputHTML += "<body>";
        outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
        outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
        outputHTML += "<table border='1'>";
        outputHTML += "<tbody>";
        foreach (string key in parameters.Keys)
        {
            outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
        }
        outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
        outputHTML += "</tbody>";
        outputHTML += "</table>";
        outputHTML += "<script type='text/javascript'>";
        outputHTML += "document.f1.submit();";
        outputHTML += "</script>";
        outputHTML += "</form>";
        outputHTML += "</body>";
        outputHTML += "</html>";
        Response.Write(outputHTML);
    }
    protected void DropDownList1Decoration_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from DecorationTable where DecorationName ='" + DropDownList1Decoration.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            TextBox1Decoration.Text = (rdr.GetInt32(3).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    protected void DropDownList2Entertainment_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from EntertainmentTable where EntertainmentName ='" + DropDownList2Entertainment.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            TextBox2Entertainment.Text = (rdr.GetInt32(3).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    protected void DropDownList3Hotel_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from HotelTable where HotelName ='" + DropDownList3Hotel.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            TextBox3Hotel.Text = (rdr.GetInt32(4).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    protected void DropDownList4Location_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from LocationTable where LocationName ='" + DropDownList4Location.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            TextBox4Location.Text = (rdr.GetInt32(3).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    protected void DropDownList5Photoshoot_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from PhotoshootTable where PhotoshootName ='" + DropDownList5Photoshoot.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            TextBox5Photoshoot.Text = (rdr.GetInt32(3).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
    protected void DropDownList6VideoShoot_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString);

        con.Open();
        cmd = con.CreateCommand();

        cmd.CommandText = "SELECT * from VideoShootTable where VideoShootName ='" + DropDownList6VideoShoot.Text + "'";
        rdr = cmd.ExecuteReader();

        if (rdr.Read())
        {
            TextBox6VideoShoot.Text = (rdr.GetInt32(3).ToString());
        }

        if ((rdr != null))
        {
            rdr.Close();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }
}