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

public partial class SatinAlmaSayfasi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblSatinAlma.Text = "Toplam Tutar:  " + Session["toplamFiyat"] + "TL ..";
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("sanalPosIleOdeme.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
}
