using System;
using System.Collections;
using System.Configuration;
using System.Data;
//using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Net;
using System.Text.RegularExpressions;


//using System.Xml.Linq;

public partial class sistemegiris : System.Web.UI.Page
{
    static int illegalCounter = 0;
    string illegalIP = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["Illegalcounter"] = 0;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Illegalcounter"] = Convert.ToInt32(Session["Illegalcounter"]) + 1;

        //  ADMIN GIRISI
        if (txtYoneticiUser.Text.Equals("yonetici") || txtYoneticiUser.Text.Equals("musteri"))
        {
            if (txtYoneticiPassword.Text.Equals("yoneticigiris*1"))
            {
                illegalCounter = 0;
                globals.isYonetici = true;
                Response.Redirect("YoneticiPaneli.aspx");
            }
            else if (txtYoneticiPassword.Text.Equals("musterigiris*1"))
            {
                illegalCounter = 0;
                globals.isMusteri = true;
                Response.Redirect("temaTANITIM.aspx");
            }
            else
            {
                illegalCounter = Convert.ToInt32(Session["Illegalcounter"]);
                if (illegalCounter > 3)
                {
                    illegalIP = getExternalIp();
                    Response.Write(illegalIP + "    <b>Adresinden illegal giriş</b> denemesi tesbit edildi"
                    + "\n" + "  Bu adres size Türktelekom tarafından tahsis edilmişdir ve şuanki yaklaşık koordinatlarınız kaydedilmiştir");
                    goto son;
                    //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Yasal UYARI ! "+illegalIP+"  adresinden illegal giris yapıyorsunuz ...');", true);
                }
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('HATALI şifre girişi !');", true); // OK
            }
        }
        else
        {
            illegalCounter = Convert.ToInt32(Session["Illegalcounter"]);
            if (illegalCounter > 3)
            {
                illegalIP = getExternalIp();
                Response.Write(illegalIP + "    <b>Adresinden illegal giriş</b> denemesi tesbit edildi"
                    + "\n" + "  Bu adres size Türktelekom tarafından tahsis edilmişdir ve şuanki yaklaşık koordinatlarınız kaydedilmiştir");
                goto son;
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Yasal UYARI ! " + illegalIP + "  adresinden illegal giris yapıyorsunuz ...');", true);
            }
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('HATALI kullanıcı girişi !');", true); // OK        
        }
    son: { }
    }

    private string getExternalIp()
    {
        try
        {
            string externalIP;
            externalIP = (new WebClient()).DownloadString("http://checkip.dyndns.org/");
            externalIP = (new Regex(@"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"))
                         .Matches(externalIP)[0].ToString();
            return externalIP;
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Beklenmeyen HATA..   EXCEPTION DURUMU !');", true);
            return null;
        }
    }
}
