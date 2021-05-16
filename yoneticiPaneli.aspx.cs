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
using System.Threading;

public partial class yoneticiPaneli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string date1 = "20.02.2013 00:31:24";
        string saat1 = "00:35";
        string tst = DateTime.Now.ToString();
        Thread.Sleep(528);
        string tst2 = DateTime.Now.ToString();
        TimeSpan ts = DateTime.Now - Convert.ToDateTime(date1);
        TimeSpan ts2 = DateTime.Now - Convert.ToDateTime(saat1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["SecilenUrun"] = DropDownList1.SelectedValue;
        globals.UrunSecimi = true;
        Response.Redirect("FiyatGuncelleme.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("KullaniciAyarlari.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("SMSAyarlari.aspx");
    }
}
