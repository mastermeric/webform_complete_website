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

public partial class sanalPosIleOdeme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblPOSMesajBilgi.Text = "Ödenecek miktar bilgisi= " + Session["toplamFiyat"].ToString() + "TL dir..";
        kkmiktar.Text = Session["toplamFiyat"].ToString();
    }

    protected void kksubmit_Click(object sender, EventArgs e)
    {
        lblPOSMesajBilgi.Font.Bold = false;
        try
        {
            ePayment.cc5payment mycc5pay = new ePayment.cc5payment();


            mycc5pay.host = "ADRES";//Verileri göndereceğimiz adres
            mycc5pay.name = "KULLANICIADI";// Bankadan verilen kullanıcı adı
            mycc5pay.password = "PAROLA";// Bankadan verilen parola
            mycc5pay.clientid = "MAGAZAID"; // Bankadan verilen mağaza id 
            mycc5pay.orderresult = 0; // 0 Gerçek işlem, 1 Test işlemi
            mycc5pay.cardnumber = kknum.Text; //' Kredi kartı numarası
            mycc5pay.expmonth = kkay.Text; //' Kredi kartı son kullanım ay
            mycc5pay.expyear = kkyil.Text; //' Kredi kartı son kullanım yıl
            mycc5pay.cv2 = kkcvc.Text; //' Kredi kartı CVC numarası
            mycc5pay.currency = "949";//' TL için 949
            mycc5pay.chargetype = "Auth";
            mycc5pay.ip = Request.ServerVariables["REMOTE_ADDR"]; // IP adresi
            mycc5pay.subtotal = kkmiktar.Text; //Çekilecek tutar

            if (kkcekim.SelectedItem.Value == "6") //' 6 taksit seçilmişse
            {
                mycc5pay.taksit = "6";
            }
            else
            {
                kkcekim.SelectedItem.Value = "12";//  12 taksit seçilmişse
                mycc5pay.taksit = "12";
            }

            string bankaSonuc = mycc5pay.processorder();// ' Fonksiyonumuzu çağırıyoruz
            string bankaHata = mycc5pay.errmsg;// Geri dönen hata mesajı
            string bankaOid = mycc5pay.oid;// Geri dönen order id
            string bankaAppr = mycc5pay.appr;// Geri dönen işlem sonucu
            string bankaProv = mycc5pay.code;//Geri dönen provizyon numarası

            // Bankadan gelen sonuçları lblSonuc labelına yazdırıyoruz.
            if (bankaSonuc == "1")
            {
                if (bankaAppr == "Approved")// Ödeme işlemi tamam
                {
                    lblSonuc.Text = "Ödeme işlemi başarıyla gerçekleşti";
                }

                else if (bankaAppr == "Declined")// Ödeme işlemi reddedildi
                {
                    lblSonuc.Text = "Ödeme işlemi banka tarafından reddedildi! : " + bankaHata + "";
                }
                else
                {
                    lblSonuc.Text = "Bir hata oluştu : " + bankaHata + "";
                }
            }
            else
            {
                lblSonuc.Text = "Bankayla irtibat kurulamadı!";
            }

        }
        catch (Exception ex)
        {
            lblSonuc.Text = ex.Message;
        }
    }
}
