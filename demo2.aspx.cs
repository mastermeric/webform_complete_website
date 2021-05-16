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
using System.Data.OleDb;
using System.Collections.Generic;
using System.Net;
using System.Text.RegularExpressions;

public partial class demo2 : System.Web.UI.Page
{
    static int illegalCounter = 0;
    string illegalIP = "";

    static OleDbConnection baglanti1;
    static OleDbDataAdapter da; // DataAdapter = Disconencted mimaridir,  DataReader = Conencted mimaridir...
    static DataTable dt;
    static List<int> StoktaKalmayanlar = new List<int>();
    static int[] adetBilgisi; // GridView icindeki dropdown'a ulasmak icin

    static int SatirIndex; // hangi Row dan tiklandi 
    static int _index2; // hangi Row dan tiklandi 
    static int _index3; // hangi Row dan tiklandi 
    static int _urunAdet = 0;
    static string _urunIsmi = "";
    static double _urunFiyati = 0;
    static double _urunToplamFiyati = 0;
    static int sayac = 0;

    static DataTable dt_temp;//= new DataTable();
    static DataRow tempDataRow = null;

    //sepet mysepet;

    urun myUrun;


    protected void Page_Load(object sender, EventArgs e)
    {
        lblAnasayfaMesaj.Text = "Sol taraftan Ürün kategorisi seçerek Sipariş'e başlayabilirsiniz..";
        ImageButton1.ImageUrl="images\\eticaretURUN.JPG";
    }
    protected void btnYoneticiGiris_Click(object sender, EventArgs e)
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
                if (illegalCounter > 10)
                {
                    illegalIP = getExternalIp();
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Yasal UYARI ! " + illegalIP + "  adresinden illegal giris yapıyorsunuz ...');", true);
                    //Response.Write(illegalIP + "    <b>Adresinden illegal giriş</b> denemesi tesbit edildi"+ "\n" + "  Bu IP Türktelekom tarafından tahsis edilmişdir, bulunduğunuz koordinatlarınız kaydedilmiştir");
                    goto son;
                    
                }
                //Response.Write("HATALI şifre girişi !");
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('HATALI şifre girişi !');", true); // OK
            }
        }
        else
        {
            illegalCounter = Convert.ToInt32(Session["Illegalcounter"]);
            if (illegalCounter > 3)
            {
                illegalIP = getExternalIp();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Yasal UYARI ! " + illegalIP + "  adresinden illegal giris yapıyorsunuz ...');", true);
                //Response.Write(illegalIP + "    <b>Adresinden illegal giriş</b> denemesi tesbit edildi"+ "\n" + "  Bu adres size Türktelekom tarafından tahsis edilmişdir ve şuanki yaklaşık koordinatlarınız kaydedilmiştir");
                goto son;
                
            }
            //Response.Write("HATALI Kullanıcı girişi !");
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
            //Response.Write("HATA OLUŞTU !!!!");
            return null;
        }
    }

    void urunleriDoldur(string param)
    {
        lblAnasayfaMesaj.Visible = false;
        ImageButton1.Visible = false;
        string SecilecekUrun = "";
        if(param.Equals("elektronik")) SecilecekUrun ="ElektronikUrunler";
        else if(param.Equals("mekanik")) SecilecekUrun ="MekanikUrunler";
        else if(param.Equals("hidrolik")) SecilecekUrun ="HidrolikUrunler";
        else if(param.Equals("yeni")) SecilecekUrun ="YeniUrunler";

                if (_urunAdet == 0)
                {
                    lblSepet.Font.Bold = true;
                    lblSepet.Text = "Sepet boş..";
                }
                try
                {
                    dt = new DataTable();
                    baglanti1 = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" +
                        Server.MapPath("App_Data\\urunler.mdb"));
                    da = new OleDbDataAdapter("select * from "+SecilecekUrun+" where AnaUrunID>1 order by AnaUrunID", baglanti1);
                    da.Fill(dt);
                    adetBilgisi = new int[dt.Rows.Count];                    
                    GridView4.DataSource = dt;
                    GridView4.DataBind();

                    dt_temp = new DataTable();
                    dt_temp.Columns.Add(new DataColumn("urun.", typeof(string)));
                    dt_temp.Columns.Add(new DataColumn("adet.", typeof(int)));
                    dt_temp.Columns.Add(new DataColumn("fiyat.", typeof(double)));
                    dt_temp.Columns.Add(new DataColumn("toplam.", typeof(double)));
                }
                catch (Exception ex)
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('SQL işleminde hata olustu - hatakodu: 0001 ');", true); // OK
                    Response.Write("SQL işleminde hata olustu - hatakodu: 0001   !!!!  ");
                }
    }

    protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            globals.SatirIndex = Convert.ToInt32(e.CommandArgument); // hangi row üzerinden çağrıldı
            myUrun = new urun();
            if (((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text.Length > 0)
            {
                try
                {
                    int temp = Convert.ToInt32(((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text);
                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ADET bilgisi Rakam olarak girilmelidir !');", true); // OK
                    ((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text = "";
                    goto Son;
                }
                if (Convert.ToInt32(((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text) < 99)
                {
                    myUrun.Id = Convert.ToInt32(dt.Rows[globals.SatirIndex][0]); // Urun ID si
                    myUrun.Ad = dt.Rows[globals.SatirIndex][1].ToString();

                    if (((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text.Length == 0)
                        myUrun.Adet = 1;
                    else
                        myUrun.Adet = Convert.ToInt32(((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text);
                    myUrun.Fiyat = Convert.ToDecimal(dt.Rows[globals.SatirIndex][5].ToString());
                    /*    NOTLAR   */
                    //  session turunden "sepet"  isminde bir degisken tanimlayalim. Sessin degiskenleri  oturum acik kalana kadar icindeki veriyi tutabilir
                    // artik,  herhangi bir sayfadan   Session["sepet"]  degiskenine ulasabiliriz.  Session.SessionID   ile  o an oturumu acan kullanicinin session ID si elde edilebbilir
                    //  Global Apllication Class   ekleyerek  Session_Start   ve Session_End  olaylarini kullanabiliriz..
                    if (Session["sepet"] == null)
                    {
                        sepet mySepet = new sepet();
                        mySepet.Ekle(myUrun);
                        Session["sepet"] = mySepet;
                    }
                    else
                    {
                        sepet mysepet = (sepet)Session["sepet"];
                        mysepet.Ekle(myUrun);
                        Session["sepet"] = mysepet;
                    }
                    //  SEPETI DOLDUR FONKSIYONU !
                    {
                        sepetidoldur();
                    }
                    ((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text = "";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' 99 dan küçük ADET girilmelidir !');", true); // OK
                    ((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text = "";
                }
            }
            else
            {
                ((TextBox)GridView4.Rows[globals.SatirIndex].Cells[2].FindControl("txtAdet")).Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert(' ADET bilgisi girilmedi !');", true); // Bu, OK
                //Response.Write("<script>alert('Bu bir denemedir')</script>");  // Bu, ekran kayboluyor
            }
            if (myUrun.Adet > 0)
            {
                  lblSepet.Font.Bold = false;
                  lblSepet.Text = "Sepetinizdeki ürünler...";
            }
        Son: { }
        }
    }

    void sepetidoldur()
    {
        //Dictionary<int, urun> tempUrunler = null;
        if (Session["sepet"] == null)
            return;
        sepet mysepet = (sepet)Session["sepet"];
        // klasik  OK
        grdSepet1.DataSource = mysepet.urunler.Values;
        grdSepet1.DataBind();
        for (int i = 0; i < 64; i++)
        {
            if (mysepet.urunler.ContainsKey(i))
            {
                tempDataRow = dt_temp.NewRow();// temp dt a yeni satir ekle
                tempDataRow["urun."] = mysepet.urunler[i].Ad;
                tempDataRow["adet."] = mysepet.urunler[i].Adet;
                tempDataRow["fiyat."] = mysepet.urunler[i].Fiyat;
                tempDataRow["toplam."] = mysepet.urunler[i].ToplamFiyat;
                dt_temp.Rows.Add(tempDataRow);
                // Sil butonunu ekliyoruz
                CommandField field = new CommandField();
                field.ButtonType = ButtonType.Button;
                field.ShowDeleteButton = true;
                field.DeleteText = "KALDIR !";
            }
        }
    }

    decimal toplamFiyatHesapla()
    {
        decimal toplamFiyat = 0;

        sepet mevcutSepet = (sepet)Session["sepet"];
        foreach (int key in mevcutSepet.urunler.Keys)
        {
            toplamFiyat += mevcutSepet.urunler[key].ToplamFiyat;
        }
        return toplamFiyat;
    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
        urunleriDoldur("elektronik");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
        urunleriDoldur("mekanik");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
        urunleriDoldur("hidrolik");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
        urunleriDoldur("yeni");
    }
    protected void grdSepet1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells.Clear();
            LinkButton lb = new LinkButton();
            lb.Text = "Toplam tutar:  " + toplamFiyatHesapla().ToString() + " TL";
            TableCell tc = new TableCell();
            tc.ColumnSpan = 100;
            tc.Controls.Add(lb);
            e.Row.Cells.Add(tc);
            Session["toplamFiyat"] = toplamFiyatHesapla();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SatinAlmaSayfasi.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("anasayfa.aspx");
    }
    protected void grdSepet1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        _index2 = Convert.ToInt32(grdSepet1.DataKeys[e.RowIndex].Value);//  cünkü grid1 den gelen 3.siradaki urunu grid2 deki 1. urun olabilir.
        sepet sepetim = (sepet)Session["sepet"];
        sepetim.urunler.Remove(_index2);
        Session["sepet"] = sepetim;
        sepetidoldur();
    }
}
