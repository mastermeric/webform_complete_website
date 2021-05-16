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

public partial class FiyatGuncelleme : System.Web.UI.Page
{
        static int SatirIndex;
        static int SelectedID;
        OleDbConnection baglanti;
        OleDbDataAdapter da; // DataAdapter = Disconencted mimaridir,  DataReader = Conencted mimaridir...
        static DataTable dt;
        static DataTable dt_temp;
        OleDbCommand UpdateKomutu;
       

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (globals.UrunSecimi == false)
        {
            Response.Write("ÜRÜN SEÇİMİ YAPILMADI  !!!!");
            goto son;
        }
        Panel2.Visible = false;
        string seciliUrun = Session["SecilenUrun"].ToString();
        dt = new DataTable();
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        da = new OleDbDataAdapter("select * from "+seciliUrun+" order by AnaUrunID", baglanti);
        da.Fill(dt);

        dt_temp = new DataTable();
        dt_temp.Columns.Add(new DataColumn("urun.", typeof(string)));
        dt_temp.Columns.Add(new DataColumn("adet.", typeof(int)));
        dt_temp.Columns.Add(new DataColumn("fiyat.", typeof(double)));
        dt_temp.Columns.Add(new DataColumn("toplam.", typeof(double)));
        GridView1.DataSource = dt;
        GridView1.DataBind();
    son: { }
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName.Equals("Select"))
        {
            SatirIndex = Convert.ToInt32(e.CommandArgument); // hangi row üzerinden çağrıldı            
            SelectedID = Convert.ToInt32(dt.Rows[SatirIndex][0].ToString());

            txtIsim.Text = dt.Rows[SatirIndex][1].ToString();
            txtFiyat.Text = dt.Rows[SatirIndex][5].ToString();
            txtAciklama.Text = dt.Rows[SatirIndex][4].ToString();
            txtResim.Text = dt.Rows[SatirIndex][2].ToString();

            Panel1.Visible = true;
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnIsim_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));                
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE AnaUrunler SET AnaUrunIsmi = @urun_ismi WHERE AnaUrunID = @urun_id ";

        UpdateKomutu.Parameters.AddWithValue("@urun_ismi", txtIsim.Text);
        UpdateKomutu.Parameters.AddWithValue("@urun_id", SelectedID.ToString());

        UpdateKomutu.Connection = baglanti;
        baglanti.Open();
        if (UpdateKomutu.ExecuteNonQuery() > 0)
        {
            Response.Write("Güncelleme BAŞARILI..");
        }
        else
        {
            Response.Write("Güncellenecek Kayıt Bulunamadı..");
        }
        baglanti.Close();
    }
    protected void btnAciklama_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE AnaUrunler SET AnaUrunDetay = @urun_detay WHERE AnaUrunID = @urun_id ";

        UpdateKomutu.Parameters.AddWithValue("@urun_detay", txtAciklama.Text);
        UpdateKomutu.Parameters.AddWithValue("@urun_id", SelectedID.ToString());

        UpdateKomutu.Connection = baglanti;
        baglanti.Open();
        if (UpdateKomutu.ExecuteNonQuery() > 0)
        {
            Response.Write("Güncelleme BAŞARILI..");
        }
        else
        {
            Response.Write("Güncellenecek Kayıt Bulunamadı..");
        }
        baglanti.Close();
    }
    protected void btnFiyat_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE AnaUrunler SET AnaUrunFiyat = @urun_fiyati WHERE AnaUrunID = @urun_id ";
        UpdateKomutu.Parameters.AddWithValue("@urun_fiyati", txtFiyat.Text);
        UpdateKomutu.Parameters.AddWithValue("@urun_id", SelectedID.ToString());
        UpdateKomutu.Connection = baglanti;
        baglanti.Open();
        if (UpdateKomutu.ExecuteNonQuery() > 0)
        {
            Response.Write("Güncelleme BAŞARILI..");
        }
        else
        {
            Response.Write("Güncellenecek Kayıt Bulunamadı..");
        }
        baglanti.Close();
    }
    protected void btnResim_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {        
    }
}
