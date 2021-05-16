using System;
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

public partial class _Default : System.Web.UI.Page 
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



    string PrmGenelArama;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Tab1.CssClass = "Clicked";
            MainView.ActiveViewIndex = 0;
        }
    }
    protected void Tab1_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Clicked";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        MainView.ActiveViewIndex = 0;
    }
    protected void Tab2_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Clicked";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        MainView.ActiveViewIndex = 1;
    }
    protected void Tab3_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Clicked";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        MainView.ActiveViewIndex = 2;
    }
    protected void Tab4_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Clicked";
        MainView.ActiveViewIndex = 3;
    }
    protected void Tab5_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Clicked";
        MainView.ActiveViewIndex = 4;
    }

    protected void btnAra_Click(object sender, EventArgs e)
    {
        PrmGenelArama = txtGenelArama.Text.Trim();
        if (!PrmGenelArama.Equals(""))
        {
            urunleriDoldur(PrmGenelArama);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ARAMA KRİTERİ BOŞ GİRİLEMEZ !');", true); // OK
        }
    }

    void urunleriDoldur(string param)
    {
        //if (_urunAdet == 0)
        //{
        //    lblSepet.Font.Bold = true;
        //    lblSepet.Text = "Sepet boş..";
        //}
        try
        {            
            dt = new DataTable();
            baglanti1 = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" +
                Server.MapPath("App_Data\\b2b_urunler.mdb"));
            da = new OleDbDataAdapter("select * from Urunler where UrunAdi like '%" + param + "%' order by UrunAdi", baglanti1);
            da.Fill(dt);

            for(int i=0;i<dt.Rows.Count;i++)
            {
                
            }
            foreach (DataRow dtr in dt.Rows)
            {
                
            }

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('KAYIT BULUNAMADI !');", true); // OK
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('SQL İŞLEM HATASI -  hatakodu: 0001 ');", true); // OK
        }
    }

    protected void GridView1_DataBound(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void GridView1_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void GridView1_Unload(object sender, EventArgs e)
    {

    }


    protected string GetStokDurumImage(object param1, object param2)
    {
        if (param2.ToString().Equals("S"))
        {
            return "resimler/siparisUzerine.png";
        }
        if(Convert.ToInt32(param1) <= 1)
        {
            return "resimler/yok.png";
        }
        else if (Convert.ToInt32(param1) < 20 && Convert.ToInt32(param1) > 1)
        {
            return "resimler/azVar.png";
        }
        else if (Convert.ToInt32(param1) >= 20 )
        {
            return "resimler/var.png";
        }
        
        return "";
    }

    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="Select")
        {
            globals.SatirIndex = Convert.ToInt32(e.CommandArgument); // hangi row üzerinden çağrıldı
            myUrun = new urun();

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ÜRÜN SEPETE EKLENDİ...');", true); // OK
        }
    }
}
