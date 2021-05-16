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

public partial class KullaniciAyarlari : System.Web.UI.Page
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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
        dt = new DataTable();
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        da = new OleDbDataAdapter("select * from Users order by uId", baglanti);
        da.Fill(dt);

        dt_temp = new DataTable();
        dt_temp.Columns.Add(new DataColumn("UserKodu.", typeof(int)));
        dt_temp.Columns.Add(new DataColumn("Isim.", typeof(string)));
        dt_temp.Columns.Add(new DataColumn("Soyisim.", typeof(string)));
        dt_temp.Columns.Add(new DataColumn("Yetki.", typeof(string)));
        dt_temp.Columns.Add(new DataColumn("Password.", typeof(string)));
        GridView1.DataSource = dt;
        GridView1.DataBind();
    son: { }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Select"))
        {
            SatirIndex = Convert.ToInt32(e.CommandArgument); // hangi row üzerinden çağrıldı            
            SelectedID = Convert.ToInt32(dt.Rows[SatirIndex][0].ToString());

            txtUSerKodu.Text = dt.Rows[SatirIndex][1].ToString();
            txtIsim.Text = dt.Rows[SatirIndex][2].ToString();
            txtSoyisim.Text = dt.Rows[SatirIndex][3].ToString();            
            txtYetki.Text = dt.Rows[SatirIndex][4].ToString();
            txtPAssword.Text = dt.Rows[SatirIndex][5].ToString();

            Panel1.Visible = true;
        }

    }
    protected void btnAciklama_Click(object sender, EventArgs e)
    {

    }
    protected void btnFiyat_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE Users SET uUserKodu = @UserKodu WHERE uId = @Id ";
        UpdateKomutu.Parameters.AddWithValue("@UserKodu", txtUSerKodu.Text);
        UpdateKomutu.Parameters.AddWithValue("@Id", SelectedID.ToString());

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
    protected void Button3_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE Users SET uIsim = @Isim WHERE uId = @Id ";
        UpdateKomutu.Parameters.AddWithValue("@Isim", txtIsim.Text);
        UpdateKomutu.Parameters.AddWithValue("@Id", SelectedID.ToString());

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
    protected void Button4_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE Users SET uSoyisim = @Soyisim WHERE uId = @Id ";
        UpdateKomutu.Parameters.AddWithValue("@Soyisim", txtSoyisim.Text);
        UpdateKomutu.Parameters.AddWithValue("@Id", SelectedID.ToString());

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
    protected void Button5_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE Users SET uYetkiFlag = @YetkiFlag WHERE uId = @Id ";
        UpdateKomutu.Parameters.AddWithValue("@YetkiFlag", txtYetki.Text);
        UpdateKomutu.Parameters.AddWithValue("@Id", SelectedID.ToString());

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
    protected void Button6_Click(object sender, EventArgs e)
    {
        baglanti = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; Data Source=" + Server.MapPath("App_Data\\urunler.mdb"));
        UpdateKomutu = new OleDbCommand();
        UpdateKomutu.CommandText = "UPDATE Users SET uPassword = @Password WHERE uId = @Id ";
        UpdateKomutu.Parameters.AddWithValue("@Password", txtPAssword.Text);
        UpdateKomutu.Parameters.AddWithValue("@Id", SelectedID.ToString());

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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
